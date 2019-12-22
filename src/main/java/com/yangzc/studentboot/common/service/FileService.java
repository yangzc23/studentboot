package com.yangzc.studentboot.common.service;

import com.yangzc.studentboot.common.domain.FileDO;

import java.util.List;
import java.util.Map;

/**
 * 文件上传
 *
 * @author yangzc
 * @email 876295854@qq.com
 * @date 2019-12-21 16:02:20
 */
public interface FileService {
	
	FileDO get(Long id);
	
	List<FileDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(FileDO sysFile);
	
	int update(FileDO sysFile);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

	/**
	 * 判断一个文件是否存在
	 * @param url FileDO中存的路径
	 * @return
	 */
    Boolean isExist(String url);
}
