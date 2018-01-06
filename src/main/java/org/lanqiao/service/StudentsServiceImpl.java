package org.lanqiao.service;

import java.util.List;

import org.lanqiao.dao.StudentsMapper;
import org.lanqiao.entity.Students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentsServiceImpl implements StudentsService {
	
	@Autowired
	StudentsMapper studentsDao;
	
	@Override
	public List<Students> getAllStudents() {
		return studentsDao.getAllStudents();
	}

}
