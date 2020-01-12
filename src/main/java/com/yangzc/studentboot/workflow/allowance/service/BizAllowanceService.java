package com.yangzc.studentboot.workflow.allowance.service;

import com.yangzc.studentboot.workflow.allowance.domain.BizAllowanceVo;
import org.activiti.engine.runtime.ProcessInstance;

import java.util.List;
import java.util.Map;

/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 15:33 2020/1/11
 * @Modified By:
 */
public interface BizAllowanceService {
    /**
     * 查询补贴申请
     *
     * @param id 补贴申请ID
     * @return 补贴申请
     */
    public BizAllowanceVo selectBizAllowanceById(Long id);

    /**
     * 查询补贴申请列表
     *
     * @param bizAllowance 补贴申请
     * @return 补贴申请集合
     */
    public List<BizAllowanceVo> selectBizAllowanceList(BizAllowanceVo bizAllowance);

    /**
     * 新增补贴申请
     *
     * @param bizAllowance 补贴申请
     * @return 结果
     */
    public int insertBizAllowance(BizAllowanceVo bizAllowance);

    /**
     * 修改补贴申请
     *
     * @param bizAllowance 补贴申请
     * @return 结果
     */
    public int updateBizAllowance(BizAllowanceVo bizAllowance);

    /**
     * 批量删除补贴申请
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBizAllowanceByIds(String ids);

    /**
     * 删除补贴申请信息
     *
     * @param id 补贴申请ID
     * @return 结果
     */
    public int deleteBizAllowanceById(Long id);

    /**
     * 启动流程
     * @param entity
     * @param applyUserId
     * @return
     */
    ProcessInstance submitApply(BizAllowanceVo entity, String applyUserId);

    /**
     * 查询我的待办列表
     * @param userId
     * @return
     */
    List<BizAllowanceVo> findTodoTasks(BizAllowanceVo allowance, String userId);

    /**
     * 完成任务
     * @param allowance
     * @param saveEntity
     * @param taskId
     * @param variables
     */
    void complete(BizAllowanceVo allowance, Boolean saveEntity, String taskId, Map<String, Object> variables);

    List<BizAllowanceVo> findDoneTasks(BizAllowanceVo bizAllowanceVo, String userId);
}
