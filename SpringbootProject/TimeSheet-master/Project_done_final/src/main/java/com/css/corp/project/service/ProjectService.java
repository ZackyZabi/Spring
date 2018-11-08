package com.css.corp.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.css.corp.project.dao.ProjectDao;
import com.css.corp.project.domain.Project;

@Service
public class ProjectService {
	@Autowired
	ProjectDao projectDao;

	@Transactional
	public List<Project> getAllProjects() {
		return projectDao.getAllProjects();
	}

	@Transactional
	public Project getProject(int id) {
		return projectDao.getProject(id);
	}

	@Transactional
	public void addProject(Project Project) {
		projectDao.addProject(Project);
	}

	@Transactional
	public void updateProject(Project Project) {
		projectDao.updateProject(Project);

	}

	@Transactional
	public void deleteProject(int id) {
		projectDao.deleteProject(id);
	}
}
