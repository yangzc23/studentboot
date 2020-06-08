package com.yangzc.studentboot.student.dao;

import com.yangzc.studentboot.student.domain.StudentDO;
import com.yangzc.studentboot.student.vo.QueryVO;

import java.util.List;
import java.util.Map;

public interface StudentDOMapper {
    int deleteByPrimaryKey(Integer sno);

    int insert(StudentDO record);

    StudentDO selectByPrimaryKey(Integer sno);

    List<StudentDO> selectByPhone(String phone);

    List<StudentDO> selectByPhoneAndSno(String phone, Integer sno);

    List<StudentDO> selectAll();

    int updateByPrimaryKey(StudentDO record);

    List<StudentDO> list(QueryVO queryVO);

    int count();
}