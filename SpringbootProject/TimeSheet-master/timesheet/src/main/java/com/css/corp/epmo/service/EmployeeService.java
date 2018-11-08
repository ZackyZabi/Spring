package com.css.corp.epmo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.css.corp.epmo.dao.EmployeeDao;
import com.css.corp.epmo.model.Employee;

@Service
public class EmployeeService
{
	@Autowired	
	EmployeeDao employeeDao;
	
	@Transactional
	public List<Employee> getAllUsers() {
		return employeeDao.getAllUsers();
	}

}
