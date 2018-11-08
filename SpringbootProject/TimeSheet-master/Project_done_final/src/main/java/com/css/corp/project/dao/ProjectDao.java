package com.css.corp.project.dao;

import java.util.List;

import com.css.corp.project.domain.Project;



public interface ProjectDao {
	public List<Project> getAllProjects() ;

	public Project getProject(int id) ;
	

	public Project addProject(Project project);

	public void updateProject(Project project) ;

	public void deleteProject(int id) ;
}
