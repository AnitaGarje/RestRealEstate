package net.codejava.spring.services;

import java.util.List;





import net.codejava.spring.dao.ProjectDAO;
import net.codejava.spring.model.Project;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;


@Service("projectService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProjectServiceImpl implements ProjectService{
	
	 @Autowired
	 private ProjectDAO projectDao;

	 @Override
	 public List<Project> list() {
		  return projectDao.list();
		 }
	 
	 
	// @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	 @Override
	 public void addProject(Project project) {
		 projectDao.addProject(project);
	 }


	@Override
	@Transactional
	public void updateProject(Project project) {
		projectDao.updateProject(project);
		
	}
	
	@Override
	@Transactional
	public Project getProjectById(int id) {	
		return this.projectDao.getProjectById(id);
	}


	@Override
	@Transactional
	public void removeProject(int id) {
		this.projectDao.removeProject(id);
	}
}
