package com.yangzc.studentboot.student.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @GetMapping()
    @RequiresPermissions("stu:list")
    String student() {
        return prefix + "/list";
    }
}
