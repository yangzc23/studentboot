package com.yangzc.studentboot.workflow.allowance.controller;

import com.yangzc.studentboot.common.annotation.Log;
import com.yangzc.studentboot.common.controller.BaseController;
import com.yangzc.studentboot.common.domain.AjaxResult;
import com.yangzc.studentboot.common.domain.TableDataInfo;
import com.yangzc.studentboot.common.utils.StringUtils;
import com.yangzc.studentboot.common.utils.ExcelUtil;
import com.yangzc.studentboot.common.utils.ShiroUtils;
import com.yangzc.studentboot.workflow.allowance.domain.BizAllowanceVo;
import com.yangzc.studentboot.workflow.allowance.service.BizAllowanceService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 16:45 2020/1/11
 * @Modified By:
 */
@Controller
@RequestMapping("/workflow/allowance")
public class BizAllowanceController extends BaseController {
    private String prefix = "workflow/allowance";

    @Autowired
    private BizAllowanceService bizAllowanceService;

    @Autowired
    private TaskService taskService;

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private IdentityService identityService;

    @RequiresPermissions("workflow:allowance:apply:list")
    @GetMapping("/apply/list")
    public String allowance(ModelMap mmap) {
        mmap.put("currentUser", ShiroUtils.getUser());
        return prefix + "/allowance";
    }

    /**
     * 查询补贴申请列表
     */
    @RequiresPermissions("workflow:allowance:apply:list")
    @PostMapping("/data")
    @ResponseBody
    public TableDataInfo list(BizAllowanceVo bizAllowance) {
        if (!ShiroUtils.getUser().getUsername().equals("admin")) {
            bizAllowance.setCreateBy(ShiroUtils.getUser().getUsername());
        }
        startPage();
        List<BizAllowanceVo> list = bizAllowanceService.selectBizAllowanceList(bizAllowance);
        return getDataTable(list);
    }

    /**
     * 导出补贴申请列表
     */
    @RequiresPermissions("process:allowance:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BizAllowanceVo bizAllowance) {
        List<BizAllowanceVo> list = bizAllowanceService.selectBizAllowanceList(bizAllowance);
        ExcelUtil<BizAllowanceVo> util = new ExcelUtil<BizAllowanceVo>(BizAllowanceVo.class);
        return util.exportExcel(list, "allowance");
    }

    /**
     * 新增补贴申请
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存补贴申请
     */
    @RequiresPermissions("workflow:allowance:apply:add")
    @Log("补贴申请")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BizAllowanceVo bizAllowance) {
        Long userId = ShiroUtils.getUserId();
        if (ShiroUtils.getUser().getUsername().equals("admin")) {
            return error("提交申请失败：不允许管理员提交申请！");
        }
        return toAjax(bizAllowanceService.insertBizAllowance(bizAllowance));
    }

    /**
     * 修改补贴申请
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        BizAllowanceVo bizAllowance = bizAllowanceService.selectBizAllowanceById(id);
        mmap.put("bizAllowance", bizAllowance);
        return prefix + "/edit";
    }

    /**
     * 修改保存补贴申请
     */
    @RequiresPermissions("process:allowance:edit")
    @Log("补贴申请修改")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BizAllowanceVo bizAllowance) {
        return toAjax(bizAllowanceService.updateBizAllowance(bizAllowance));
    }

    /**
     * 删除补贴申请
     */
    @RequiresPermissions("process:allowance:remove")
    @Log("补贴申请删除")
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(bizAllowanceService.deleteBizAllowanceByIds(ids));
    }

    /**
     * 提交申请
     */
    @Log("补贴申请提交")
    @PostMapping( "/submitApply")
    @ResponseBody
    public AjaxResult submitApply(Long id) {
        BizAllowanceVo allowance = bizAllowanceService.selectBizAllowanceById(id);
        String applyUserId = ShiroUtils.getUser().getUsername();
        bizAllowanceService.submitApply(allowance, applyUserId);
        return success();
    }

    @RequiresPermissions("workflow:allowance:task:list")
    @GetMapping("/task/list")
    public String todoView() {
        return prefix + "/allowanceToDo";
    }

    /**
     * 我的待办列表
     * @param bizAllowance
     * @return
     */
    @RequiresPermissions("workflow:allowance:task:list")
    @PostMapping("/task/data")
    @ResponseBody
    public TableDataInfo taskList(BizAllowanceVo bizAllowance) {
        startPage();
        List<BizAllowanceVo> list = bizAllowanceService.findTodoTasks(bizAllowance, ShiroUtils.getUser().getUsername());
        return getDataTable(list);
    }

    /**
     * 加载审批弹窗
     * @param taskId
     * @param mmap
     * @return
     */
    @GetMapping("/showVerifyDialog/{taskId}")
    public String showVerifyDialog(@PathVariable("taskId") String taskId, ModelMap mmap) {
        Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
        String processInstanceId = task.getProcessInstanceId();
        ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
        BizAllowanceVo bizAllowance = bizAllowanceService.selectBizAllowanceById(new Long(processInstance.getBusinessKey()));
        mmap.put("bizAllowance", bizAllowance);
        mmap.put("taskId", taskId);
        String verifyName = task.getTaskDefinitionKey().substring(0, 1).toUpperCase() + task.getTaskDefinitionKey().substring(1);
        return prefix + "/task" + verifyName;
    }

    /**
     * 完成任务
     *
     * @return
     */
    @RequestMapping(value = "/complete/{taskId}", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public AjaxResult complete(@PathVariable("taskId") String taskId, @RequestParam(value = "saveEntity", required = false) String saveEntity,
                               @ModelAttribute("preloadAllowance") BizAllowanceVo allowance, HttpServletRequest request) {
        boolean saveEntityBoolean = BooleanUtils.toBoolean(saveEntity);
        Map<String, Object> variables = new HashMap<String, Object>();
        Enumeration<String> parameterNames = request.getParameterNames();
        String comment = null;          // 批注
        try {
            while (parameterNames.hasMoreElements()) {
                String parameterName = (String) parameterNames.nextElement();
                if (parameterName.startsWith("p_")) {
                    // 参数结构：p_B_name，p为参数的前缀，B为类型，name为属性名称
                    String[] parameter = parameterName.split("_");
                    if (parameter.length == 3) {
                        String paramValue = request.getParameter(parameterName);
                        Object value = paramValue;
                        if (parameter[1].equals("B")) {
                            value = BooleanUtils.toBoolean(paramValue);
                        } else if (parameter[1].equals("DT")) {
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
                            value = sdf.parse(paramValue);
                        } else if (parameter[1].equals("COM")) {
                            comment = paramValue;
                        } else if (parameter[1].equals("STR")) {
                            value = paramValue;
                        }
                        variables.put(parameter[2], value);
                    } else {
                        throw new RuntimeException("invalid parameter for activiti variable: " + parameterName);
                    }
                }
            }
            if (StringUtils.isNotEmpty(comment)) {
                identityService.setAuthenticatedUserId(ShiroUtils.getUser().getUsername());
                taskService.addComment(taskId, allowance.getInstanceId(), comment);
            }
            bizAllowanceService.complete(allowance, saveEntityBoolean, taskId, variables);

            return success("任务已完成");
        } catch (Exception e) {
            //logger.error("error on complete task {}, variables={}", new Object[]{taskId, variables, e});
            return error("完成任务失败");
        }
    }

    /**
     * 自动绑定页面字段
     */
    @ModelAttribute("preloadAllowance")
    public BizAllowanceVo getAllowance(@RequestParam(value = "id", required = false) Long id, HttpSession session) {
        if (id != null) {
            return bizAllowanceService.selectBizAllowanceById(id);
        }
        return new BizAllowanceVo();
    }

    @RequiresPermissions("workflow:allowance:done:list")
    @GetMapping("/done/list")
    public String doneView() {
        return prefix + "/allowanceDone";
    }

    /**
     * 我的已办列表
     * @param bizAllowance
     * @return
     */
    @RequiresPermissions("workflow:allowance:done:list")
    @PostMapping("/done/data")
    @ResponseBody
    public TableDataInfo taskDoneList(BizAllowanceVo bizAllowance) {
        startPage();
        List<BizAllowanceVo> list = bizAllowanceService.findDoneTasks(bizAllowance, ShiroUtils.getUser().getUsername());
        return getDataTable(list);
    }
    
}
