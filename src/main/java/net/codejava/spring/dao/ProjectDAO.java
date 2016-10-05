package net.codejava.spring.dao;

import java.util.List;

import net.codejava.spring.model.Project;

public interface ProjectDAO {
	public List<Project> list();
	 public void addProject(Project project);
	 public void updateProject(Project project);
	 public Project getProjectById(int id);
	 public void removeProject(int id);
}
