package com.yangzc.studentboot.student.dao;

import com.yangzc.studentboot.student.domain.StudentDO;
import java.util.List;
import java.util.Map;

public interface StudentDOMapper {
    int deleteByPrimaryKey(Integer sno);

    int insert(StudentDO record);

    StudentDO selectByPrimaryKey(Integer sno);

    List<StudentDO> selectAll();

    int updateByPrimaryKey(StudentDO record);

    List<StudentDO> list(Map<String, Object> map);

    int count();
}