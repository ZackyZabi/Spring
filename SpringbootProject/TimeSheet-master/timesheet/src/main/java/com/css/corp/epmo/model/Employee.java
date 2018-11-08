package com.css.corp.epmo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Employee {


	@Id
	@Column(name = "eid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int eid;	
	@Column(unique=true)
	private String emp_id;

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public Employee(int eid, String emp_id) {
		super();
		this.eid = eid;
		this.emp_id = emp_id;
	}

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

}
