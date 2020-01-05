package com.yangzc.studentboot.common.service;

import org.springframework.stereotype.Service;

import com.yangzc.studentboot.common.domain.LogDO;
import com.yangzc.studentboot.common.domain.PageDO;
import com.yangzc.studentboot.common.utils.Query;

@Service
public interface LogService {
	void save(LogDO logDO);
	PageDO<LogDO> queryList(Query query);
	int remove(Long id);
	int batchRemove(Long[] ids);
}
