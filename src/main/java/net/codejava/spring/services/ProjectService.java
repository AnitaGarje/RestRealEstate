package net.codejava.spring.services;

import java.util.List;

import net.codejava.spring.model.Project;

public interface ProjectService {
	public List<Project> list();
	 public void addProject(Project project);
	 public void updateProject(Project project);
	 public Project getProjectById(int id);
	 public void removeProject(int id);
}
