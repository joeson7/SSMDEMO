package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.entity.Students;

public interface StudentsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Students record);

    int insertSelective(Students record);

    Students selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Students record);

    int updateByPrimaryKey(Students record);
    
    List<Students> getAllStudents();
}