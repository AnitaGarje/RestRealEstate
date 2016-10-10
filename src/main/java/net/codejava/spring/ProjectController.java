package net.codejava.spring;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.codejava.spring.dao.ProjectDAO;
import net.codejava.spring.model.Project;
import net.codejava.spring.services.ProjectService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;

/**
 * Handles requests for the application home page.
 */
@RestController  //note this for REST ful API
public class ProjectController {
	
	
	 @Autowired
	 private ProjectService projectService;

 
	 //-------------------Retrieve All projects--------------------------------------------------------
     
	    @RequestMapping(value = "/project/", method = RequestMethod.GET)
	    public ResponseEntity<List<Project>> listAllProjects() {
	        List<Project> projects = projectService.list();
	        if(projects.isEmpty()){
	            return new ResponseEntity<List<Project>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
	        }
	        return new ResponseEntity<List<Project>>(projects, HttpStatus.OK);
	    }
	    
	    
	    //-------------------Retrieve Single Project--------------------------------------------------------
	      
	    @RequestMapping(value = "/project/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	    public ResponseEntity<Project> getProject(@PathVariable("id") int id) {
	        System.out.println("Fetching Project with id " + id);
	        Project project =projectService.getProjectById(id);
	        if (project == null) {
	            System.out.println("Project with id " + id + " not found");
	            return new ResponseEntity<Project>(HttpStatus.NOT_FOUND);
	        }
	        return new ResponseEntity<Project>(project, HttpStatus.OK);
	    }
	  
	  //-------------------Create a Project--------------------------------------------------------
	      
	    @RequestMapping(value = "/project/", method = RequestMethod.POST)
	    public ResponseEntity<Void> createProject(@RequestBody Project project,    UriComponentsBuilder ucBuilder) {
	        //System.out.println("Creating Project " + project.());
	  
	       /* if (projectService.isProjectExist(project)) {
	            System.out.println("A Project with name " + project.getProjectname() + " already exist");
	            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
	        }*/
	  
	        projectService.addProject(project);
	  
	        HttpHeaders headers = new HttpHeaders();
	        headers.setLocation(ucBuilder.path("/project/{id}").buildAndExpand(project.getId()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	    }
	
	    
	  //------------------- Update a Project --------------------------------------------------------
	      
	    @RequestMapping(value = "/project/{id}", method = RequestMethod.PUT)
	    public ResponseEntity<Project> updateProject(@PathVariable("id") int id, @RequestBody Project project) {
	        System.out.println("Updating Project " + id);
	          
	        Project currentProject = projectService.getProjectById(id);
	          
	        if (currentProject==null) {
	            System.out.println("Project with id " + id + " not found");
	            return new ResponseEntity<Project>(HttpStatus.NOT_FOUND);
	        }
	  
	        currentProject.setCode(project.getCode());
	        currentProject.setDescription(project.getDescription());
	       
	          
	        projectService.updateProject(currentProject);
	        return new ResponseEntity<Project>(currentProject, HttpStatus.OK);
	    }
	  
	     
	     
	    //------------------- Delete a Project --------------------------------------------------------
	      
	    @RequestMapping(value = "/project/{id}", method = RequestMethod.DELETE)
	    public ResponseEntity<Project> deleteProject(@PathVariable("id") int id) {
	        System.out.println("Fetching & Deleting Project with id " + id);
	  
	        Project project = projectService.getProjectById(id);
	        if (project == null) {
	            System.out.println("Unable to delete. Project with id " + id + " not found");
	            return new ResponseEntity<Project>(HttpStatus.NOT_FOUND);
	        }
	  
	        projectService.removeProject(id);
	        return new ResponseEntity<Project>(HttpStatus.NO_CONTENT);
	    }
	  
	      
	     
	
	 
}
