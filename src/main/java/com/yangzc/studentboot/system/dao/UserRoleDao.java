package com.yangzc.studentboot.system.dao;

import com.yangzc.studentboot.system.domain.UserRoleDO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * 用户与角色对应关系
 * 
 * @author yangzc
 * @email 876295854@qq.com
 * @date 2019-12-21 11:08:59
 */
@Mapper
public interface UserRoleDao {

	UserRoleDO get(Long id);

	List<UserRoleDO> list(Map<String, Object> map);

	int count(Map<String, Object> map);

	int save(UserRoleDO userRole);

	int update(UserRoleDO userRole);

	int remove(Long id);

	int batchRemove(Long[] ids);

	List<Long> listRoleId(Long userId);

	int removeByUserId(Long userId);

	int removeByRoleId(Long roleId);

	int batchSave(List<UserRoleDO> list);

	int batchRemoveByUserId(Long[] ids);
}
