package net.codejava.spring;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.codejava.spring.dao.ProjectDAO;
import net.codejava.spring.model.Project;
import net.codejava.spring.services.ProjectService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProjectController {
	
	/*@Autowired
	private ProjectDAO projectDao;
	*/
	 @Autowired
	 private ProjectService projectService;
	

	/* @RequestMapping(value="/projects")
	public ModelAndView home() {
		List<Project> listProjects = projectService.list();
		ModelAndView model = new ModelAndView("home");
		model.addObject("projectList", listProjects);
		return model;
	}
	
	@RequestMapping(value = "/add")
	 public ModelAndView addProject() {
	  return new ModelAndView("addProject");
	}
	 
	@RequestMapping(value = "/save", method = RequestMethod.GET)
	 public ModelAndView saveProject(@ModelAttribute("project")Project project, 
	    BindingResult result) {
		projectService.addProject(project);
		System.out.println("Project code:"+project.getCode()+"project description:"+project.getDescription());
		
	   return new ModelAndView("redirect:/");
	  }*/
	
	
	
	@RequestMapping(value = "/projects", method = RequestMethod.GET)
	public String listPersons(Model model) {
		model.addAttribute("project", new Project());
		model.addAttribute("projectList", projectService.list());
		return "project";
	}
	
	//For add and update person both
	@RequestMapping(value= "/project/add", method = RequestMethod.POST)
	public String addProject(@ModelAttribute("project") Project p){
		
		if(p.getId() == 0){
			//new person, add it
			projectService.addProject(p);
		}else{
			//existing person, call update
			projectService.updateProject(p);
		}
		
		return "redirect:/projects";
		
	}
	
	 @RequestMapping("/edit/{id}")
	    public String editProject(@PathVariable("id") int id, Model model){
	        model.addAttribute("project", projectService.getProjectById(id));
	        model.addAttribute("projectList", projectService.list()); //projectList and jsp item shoudld be same in foreach
	        return "project";
	    }
	
	
		@RequestMapping("/remove/{id}")
	    public String removeProject(@PathVariable("id") int id){
			projectService.removeProject(id);
	        return "redirect:/projects";
	    }
	
	 
}
