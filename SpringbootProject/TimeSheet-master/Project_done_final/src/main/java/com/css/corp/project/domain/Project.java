package com.css.corp.project.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Project {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(unique=true)
	private String projectid;
	@Column
	private String projectname;
	@Column
	private String projectmanager;
	@Column
	private String deliverydirector;
	@Column
	private String location;
	@Column
	private String projecttype;
	@Column
	private String unit;
	@Column
	private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProjectid() {
		return projectid;
	}

	public void setProjectid(String projectid) {
		this.projectid = projectid;
	}

	public String getProjectname() {
		return projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}

	public String getProjectmanager() {
		return projectmanager;
	}

	public void setProjectmanager(String projectmanager) {
		this.projectmanager = projectmanager;
	}

	public String getDeliverydirector() {
		return deliverydirector;
	}

	public void setDeliverydirector(String deliverydirector) {
		this.deliverydirector = deliverydirector;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getProjecttype() {
		return projecttype;
	}

	public void setProjecttype(String projecttype) {
		this.projecttype = projecttype;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Project() {
		super();
	}

	public Project(int id, String projectid, String projectname, String projectmanager, String deliverydirector,
			String location, String projecttype, String unit, String status) {
		super();
		this.id = id;
		this.projectid = projectid;
		this.projectname = projectname;
		this.projectmanager = projectmanager;
		this.deliverydirector = deliverydirector;
		this.location = location;
		this.projecttype = projecttype;
		this.unit = unit;
		this.status = status;
	}
}
