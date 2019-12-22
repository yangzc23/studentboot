package com.yangzc.studentboot.common.dao;

import com.yangzc.studentboot.common.domain.FileDO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * 文件上传
 *
 * @author yangzc
 * @email 876295854@qq.com
 * @date 2019-12-21 15:45:42
 */
@Mapper
public interface FileDao {

	FileDO get(Long id);
	
	List<FileDO> list(Map<String, Object> map);

	int count(Map<String, Object> map);
	
	int save(FileDO file);
	
	int update(FileDO file);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
