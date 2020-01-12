package com.yangzc.studentboot.workflow.allowance.listener;

import com.yangzc.studentboot.common.utils.SpringUtils;
import org.activiti.engine.TaskService;
import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.springframework.stereotype.Service;


/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 13:43 2020/1/11
 * @Modified By:
 */

@Service
public class MyTaskListener implements TaskListener {

    @Override
    public void notify(DelegateTask delegateTask) {
        TaskService taskService = SpringUtils.getBean(TaskService.class);
        //BizAllowanceVo allowance = bizAllowanceService.selectBizAllowanceById(new Long(delegateTask.getExecution().getProcessInstanceBusinessKey()));
        //delegateTask.setAssignee("axianlu");
        taskService.setAssignee(delegateTask.getId(),"yangzc");
    }

}
