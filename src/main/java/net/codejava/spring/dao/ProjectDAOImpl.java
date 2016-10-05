package net.codejava.spring.dao;

import java.util.List;

import net.codejava.spring.model.Project;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

public class ProjectDAOImpl implements ProjectDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectDAOImpl.class);
	private SessionFactory sessionFactory;

	public ProjectDAOImpl(SessionFactory sessionFactory) {  /*note this is constructor*/
		this.sessionFactory = sessionFactory;
	}

	@Override
	@Transactional
	public List<Project> list() {
		@SuppressWarnings("unchecked")
		List<Project> listProject = (List<Project>) sessionFactory.getCurrentSession()
				.createCriteria(Project.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listProject;
	}

	@Override
	@Transactional
	public void addProject(Project project) {
		   sessionFactory.getCurrentSession().persist(project);
		 }

	@Override
	public void updateProject(Project project) {
		sessionFactory.getCurrentSession().update(project);
		
	}

	@Override
	public Project getProjectById(int id) {	
		Project p = (Project)sessionFactory.getCurrentSession().load(Project.class, new Integer(id));
		//System.out.println("ID is:"+id);
		logger.info("Project loaded successfully, Project details="+p);
		return p;
	}

	@Override
	public void removeProject(int id) {
		Project p = (Project) sessionFactory.getCurrentSession().load(Project.class, new Integer(id));
		if(null != p){
			sessionFactory.getCurrentSession().delete(p);
		}
		logger.info("Person deleted successfully, person details="+p);
		
	}
	
	

	
}
