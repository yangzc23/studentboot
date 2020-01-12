package com.yangzc.studentboot.workflow.general.service.impl;

import com.yangzc.studentboot.common.utils.StringUtils;
import com.yangzc.studentboot.workflow.general.domain.HistoricActivity;
import com.yangzc.studentboot.workflow.general.mapper.ProcessMapper;
import com.yangzc.studentboot.workflow.general.service.IProcessService;
import com.yangzc.studentboot.system.domain.UserDO;
import com.yangzc.studentboot.system.dao.UserDao;
import org.activiti.engine.HistoryService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricActivityInstanceQuery;
import org.activiti.engine.task.Comment;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class ProcessServiceImpl implements IProcessService {

    @Autowired
    private TaskService taskService;

    @Autowired
    private HistoryService historyService;

    @Autowired
    private UserDao userMapper;

    @Autowired
    private ProcessMapper processMapper;

    @Override
    public List<HistoricActivity> selectHistoryList(String processInstanceId, HistoricActivity historicActivity) {
        List<HistoricActivity> activityList = new ArrayList<>();
        HistoricActivityInstanceQuery query = historyService.createHistoricActivityInstanceQuery();
        if (StringUtils.isNotBlank(historicActivity.getAssignee())) {
            query.taskAssignee(historicActivity.getAssignee());
        }
        if (StringUtils.isNotBlank(historicActivity.getActivityName())) {
            query.activityName(historicActivity.getActivityName());
        }
        List<HistoricActivityInstance> list = query.processInstanceId(processInstanceId)
                .activityType("userTask")
                .finished()
                .orderByHistoricActivityInstanceStartTime()
                .desc()
                .list();
        list.forEach(instance -> {
            HistoricActivity activity = new HistoricActivity();
            BeanUtils.copyProperties(instance, activity);
            String taskId = instance.getTaskId();
            List<Comment> comment = taskService.getTaskComments(taskId, "comment");
            if (!CollectionUtils.isEmpty(comment)) {
                activity.setComment(comment.get(0).getFullMessage());
            }
            UserDO user = userMapper.selectUserByLoginName(instance.getAssignee());
            if (user != null) {
                activity.setAssigneeName(user.getName());
            }
//            activity.setAssigneeName(instance.getAssignee());
            activityList.add(activity);
        });
        return activityList;
    }

}
