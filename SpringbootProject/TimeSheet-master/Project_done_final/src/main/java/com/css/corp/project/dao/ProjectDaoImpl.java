package com.css.corp.project.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.css.corp.project.domain.Project;

@Repository
public class ProjectDaoImpl implements ProjectDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public List<Project> getAllProjects() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Project> projectList = session.createQuery("from Project").list();
		return projectList;
	}

	@Override
	public Project getProject(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Project project = (Project) session.get(Project.class, id);
		return project;
	}

	@Override
	public Project addProject(Project project) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(project);
		return project;
	}

	@Override
	public void updateProject(Project project) {
		Session session = this.sessionFactory.getCurrentSession();
		Hibernate.initialize(project);
		session.update(project);
	}

	@Override
	public void deleteProject(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Project p = (Project) session.load(Project.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}
}
