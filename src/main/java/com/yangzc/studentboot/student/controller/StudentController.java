package com.yangzc.studentboot.student.controller;

import com.yangzc.studentboot.common.domain.ActionResult;
import com.yangzc.studentboot.student.dao.StudentDOMapper;
import com.yangzc.studentboot.student.domain.StudentDO;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 7:59 2019/12/24
 * @Modified By:
 */

@Controller
@RequestMapping("/stu/list")
public class StudentController {
    private String prefix = "student";

    @Autowired
    StudentDOMapper studentDOMapper;

    @GetMapping()
    @RequiresPermissions("stu:list")
    String student() {
        return prefix + "/list";
    }

    @GetMapping(value = "/welcome")
    @RequiresPermissions("stu:list")
    @ResponseBody
    public ActionResult getStudents() {
        List<StudentDO> students = studentDOMapper.selectAll();
        ActionResult result = new ActionResult(students);
        return result;
    }
}
