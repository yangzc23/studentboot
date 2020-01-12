package com.yangzc.studentboot.workflow.allowance.service.impl;

import com.github.pagehelper.Page;
import com.yangzc.studentboot.common.domain.PageDomain;
import com.yangzc.studentboot.common.domain.TableSupport;
import com.yangzc.studentboot.common.utils.Convert;
import com.yangzc.studentboot.common.utils.DateUtils;
import com.yangzc.studentboot.common.utils.StringUtils;
import com.yangzc.studentboot.common.utils.ShiroUtils;
import com.yangzc.studentboot.workflow.allowance.domain.BizAllowanceVo;
import com.yangzc.studentboot.workflow.allowance.mapper.BizAllowanceMapper;
import com.yangzc.studentboot.workflow.allowance.service.BizAllowanceService;
import com.yangzc.studentboot.system.domain.UserDO;
import com.yangzc.studentboot.system.dao.UserDao;
import org.activiti.engine.HistoryService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 15:40 2020/1/11
 * @Modified By:
 */
@Service
@Transactional
public class BizAllowanceServiceImpl implements BizAllowanceService {

    @Autowired
    private BizAllowanceMapper bizAllowanceMapper;

    @Autowired
    private IdentityService identityService;

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private TaskService taskService;

    @Autowired
    private HistoryService historyService;

    @Autowired
    private UserDao userMapper;

    @Override
    public BizAllowanceVo selectBizAllowanceById(Long id) {
        BizAllowanceVo allowance = bizAllowanceMapper.selectBizAllowanceById(id);
        UserDO user = userMapper.selectUserByLoginName(allowance.getApplyUser());
        if (user != null) {
            allowance.setApplyUserName(user.getName());
        }
        return allowance;
    }

    @Override
    public List<BizAllowanceVo> selectBizAllowanceList(BizAllowanceVo bizAllowance) {
        PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();

        // PageHelper 仅对第一个 List 分页
        Page<BizAllowanceVo> list = (Page<BizAllowanceVo>) bizAllowanceMapper.selectBizAllowanceList(bizAllowance);
        Page<BizAllowanceVo> returnList = new Page<>();
        for (BizAllowanceVo allowance: list) {
            UserDO user = userMapper.selectUserByLoginName(allowance.getCreateBy());
            if (user != null) {
                allowance.setCreateUserName(user.getName());
            }
            UserDO user2 = userMapper.selectUserByLoginName(allowance.getApplyUser());
            if (user2 != null) {
                allowance.setApplyUserName(user2.getName());
            }
            // 当前环节
            if (StringUtils.isNotBlank(allowance.getInstanceId())) {
                List<Task> taskList = taskService.createTaskQuery()
                        .processInstanceId(allowance.getInstanceId())
//                        .singleResult();
                        .list();    // 例如请假会签，会同时拥有多个任务
                if (!CollectionUtils.isEmpty(taskList)) {
                    Task task = taskList.get(0);
                    allowance.setTaskId(task.getId());
                    allowance.setTaskName(task.getName());
                } else {
                    allowance.setTaskName("已办结");
                }
            } else {
                allowance.setTaskName("未启动");
            }
            returnList.add(allowance);
        }
        returnList.setTotal(CollectionUtils.isEmpty(list) ? 0 : list.getTotal());
        returnList.setPageNum(pageNum);
        returnList.setPageSize(pageSize);
        return returnList;
    }

    @Override
    public int insertBizAllowance(BizAllowanceVo bizAllowance) {
        bizAllowance.setCreateBy(ShiroUtils.getUser().getUsername());
        bizAllowance.setCreateTime(DateUtils.getNowDate());
        return bizAllowanceMapper.insertBizAllowance(bizAllowance);
    }

    @Override
    public int updateBizAllowance(BizAllowanceVo bizAllowance) {
        bizAllowance.setUpdateTime(DateUtils.getNowDate());
        return bizAllowanceMapper.updateBizAllowance(bizAllowance);
    }

    @Override
    public int deleteBizAllowanceByIds(String ids) {
        return bizAllowanceMapper.deleteBizAllowanceByIds(Convert.toStrArray(ids));
    }

    @Override
    public int deleteBizAllowanceById(Long id) {
        return bizAllowanceMapper.deleteBizAllowanceById(id);
    }

    @Override
    public ProcessInstance submitApply(BizAllowanceVo entity, String applyUserId) {
        entity.setApplyUser(applyUserId);
        entity.setApplyTime(DateUtils.getNowDate());
        entity.setUpdateBy(applyUserId);
        bizAllowanceMapper.updateBizAllowance(entity);
        String businessKey = entity.getId().toString(); // 实体类 ID，作为流程的业务 key

        // 用来设置启动流程的人员ID，引擎会自动把用户ID保存到activiti:initiator中
        identityService.setAuthenticatedUserId(applyUserId);
        //
        Map<String,Object> variables = new HashMap<>();
        variables.put("username",applyUserId);
        ProcessInstance processInstance = runtimeService // 启动流程时设置业务 key
                .startProcessInstanceByKey("allowance", businessKey, variables);
        String processInstanceId = processInstance.getId();
        entity.setInstanceId(processInstanceId); // 建立双向关系
        bizAllowanceMapper.updateBizAllowance(entity);

        // 下一节点处理人待办事项
        //bizTodoItemService.insertTodoItem(processInstanceId, entity, "allowance");

        return processInstance;
    }

    @Override
    public List<BizAllowanceVo> findTodoTasks(BizAllowanceVo allowance, String userId) {
        List<BizAllowanceVo> results = new ArrayList<>();
        List<Task> tasks = new ArrayList<Task>();

        // 根据当前人的ID查询
        List<Task> todoList = taskService.createTaskQuery().processDefinitionKey("allowance").taskAssignee(userId).list();

        // 根据当前人未签收的任务
        List<Task> unsignedTasks = taskService.createTaskQuery().processDefinitionKey("allowance").taskCandidateUser(userId).list();

        // 合并
        tasks.addAll(todoList);
        tasks.addAll(unsignedTasks);

        // 根据流程的业务ID查询实体并关联
        for (Task task : tasks) {
            String processInstanceId = task.getProcessInstanceId();

            // 条件过滤 1
            if (StringUtils.isNotBlank(allowance.getInstanceId()) && !allowance.getInstanceId().equals(processInstanceId)) {
                continue;
            }

            ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
            String businessKey = processInstance.getBusinessKey();
            BizAllowanceVo allowance2 = bizAllowanceMapper.selectBizAllowanceById(new Long(businessKey));

            allowance2.setTaskId(task.getId());
            allowance2.setTaskName(task.getName());

            UserDO user = userMapper.selectUserByLoginName(allowance2.getApplyUser());
            allowance2.setApplyUserName(user.getName());

            results.add(allowance2);
        }
        return results;
    }

    @Override
    public void complete(BizAllowanceVo allowance, Boolean saveEntity, String taskId, Map<String, Object> variables) {
        if (saveEntity) {
            bizAllowanceMapper.updateBizAllowance(allowance);
        }
        // 只有签收任务，act_hi_taskinst 表的 assignee 字段才不为 null
        taskService.claim(taskId, ShiroUtils.getUser().getUsername());
        taskService.complete(taskId, variables);
    }

    @Override
    public List<BizAllowanceVo> findDoneTasks(BizAllowanceVo bizAllowanceVo, String userId) {
        List<BizAllowanceVo> results = new ArrayList<>();
        List<HistoricTaskInstance> list = historyService.createHistoricTaskInstanceQuery()
                .processDefinitionKey("allowance")
                .taskAssignee(userId)
                .finished()
                .orderByHistoricTaskInstanceEndTime()
                .desc()
                .list();

        // 根据流程的业务ID查询实体并关联
        for (HistoricTaskInstance instance : list) {
            String processInstanceId = instance.getProcessInstanceId();

            // 条件过滤 1
            if (StringUtils.isNotBlank(bizAllowanceVo.getInstanceId()) && !bizAllowanceVo.getInstanceId().equals(processInstanceId)) {
                continue;
            }

            HistoricProcessInstance processInstance = historyService.createHistoricProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();

            String businessKey = processInstance.getBusinessKey();
            BizAllowanceVo allowance2 = bizAllowanceMapper.selectBizAllowanceById(new Long(businessKey));

            allowance2.setTaskId(instance.getId());
            allowance2.setTaskName(instance.getName());
            allowance2.setDoneTime(instance.getEndTime());

            UserDO user = userMapper.selectUserByLoginName(allowance2.getApplyUser());
            allowance2.setApplyUserName(user.getName());

            results.add(allowance2);
        }
        return results;
    }
}
