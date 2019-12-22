package com.yangzc.studentboot.common.controller;

import com.yangzc.studentboot.common.utils.ShiroUtils;
import com.yangzc.studentboot.system.domain.UserDO;
import org.springframework.stereotype.Controller;

@Controller
public class BaseController {
	public UserDO getUser() {
		return ShiroUtils.getUser();
	}

	public Long getUserId() {
		return getUser().getUserId();
	}

	public String getUsername() {
		return getUser().getUsername();
	}
}