package com.css.corp.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.css.corp.project.domain.TimeSheet;
import com.css.corp.project.service.TimeSheetService;
import com.css.corp.project.domain.Project;
import com.css.corp.project.domain.User;
import com.css.corp.project.service.ProjectService;
import com.css.corp.project.service.UserService;

@Controller
public class EmployeeController {

	@RequestMapping("/")
	public String redirect() {
		return "redirect:/welcome";
	}
	


	@RequestMapping("/welcome")
	public ModelAndView firstPage() {
		return new ModelAndView("welcome");
	}


	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		
		
		if (error != null)
		
			model.addAttribute("errorMsg", "Your username and password are invalid.");

		if (logout != null)
			model.addAttribute("msg", "You have been logged out successfully.");
		
		return "login";
		
	}
	
	@RequestMapping("/dummy")
	public ModelAndView dummypage() {
		return new ModelAndView("dummy");
	}
	
	
	@Autowired
	 ProjectService projectService;
		@Autowired
		UserService userService;
		
		@RequestMapping(value = "/getAllProjects", method = RequestMethod.GET, headers = "Accept=application/json")
		public String getAllProjects(Model model) {

			List<Project> listOfProjects = projectService.getAllProjects();
			model.addAttribute("project", new Project());
			model.addAttribute("listOfProjects", listOfProjects);
			return "projectDetails";
		}
		@RequestMapping(value = "/getAllProjects1", method = RequestMethod.GET, headers = "Accept=application/json")
		public String getAllProjects1(Model model) {

			List<Project> listOfProjects = projectService.getAllProjects();
			model.addAttribute("project", new Project());
			model.addAttribute("listOfProjects", listOfProjects);
			return "projectDetails2";
		}
		
		
		/*@RequestMapping(value = "/", method = RequestMethod.GET, headers = "Accept=application/json")
		public String goToHomePage() {
			return "index";
		}*/
		
		/*
		@RequestMapping(value = "/projectshome", method = RequestMethod.GET, headers = "Accept=application/json")
		public String goToHomePage2() {
			return "Project";
		}
		@RequestMapping(value = "/underconstruction", method = RequestMethod.GET, headers = "Accept=application/json")
		public String goToHomePage1() {
			return "UnderCons";
		}
	*/
		@RequestMapping(value = "/getProject/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public Project getCustomerBys_no(@PathVariable int id) {
			return projectService.getProject(id);
		}
		
		@RequestMapping(value = "/addProject", method = RequestMethod.POST, headers = "Accept=application/json")
		public String addProject(@ModelAttribute("project") Project project) {	
			if(project.getId()==0)
			{
				projectService.addProject(project);
			}
			else
			{	
				projectService.updateProject(project);
			}

			return "redirect:/getAllProjects1";
		}		
			

		@RequestMapping(value = "/updateProject/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public String updateProject(@PathVariable("id") int id,Model model) {
			model.addAttribute("project", this.projectService.getProject(id));
			model.addAttribute("listOfProject", this.projectService.getAllProjects());
			return "projectDetails";
		}
		@RequestMapping(value = "/updateProject", method = RequestMethod.GET, headers = "Accept=application/json")
		public String updateProject1(@RequestParam("id") int id,Model model) {
			model.addAttribute("project", this.projectService.getProject(id));
			model.addAttribute("listOfProject", this.projectService.getAllProjects());
			return "projectDetails";
		}
		
		@RequestMapping(value = "/deleteProject/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public String deleteProject(@PathVariable("id") int id) {
			projectService.deleteProject(id);
			return "redirect:/getAllProjects1";

		}
		
		
		
		@RequestMapping(value = "/getAllUsers", method = RequestMethod.GET, headers = "Accept=application/json")
		public String getAllUsers(Model model) {

			List<User> listOfUsers = userService.getAllUsers();
			model.addAttribute("user", new User());
			model.addAttribute("listOfUsers", listOfUsers);
			return "userDetails";
		}
		@RequestMapping(value = "/getAllUsers1", method = RequestMethod.GET, headers = "Accept=application/json")
		public String getAllUsers1(Model model) {
			List<User> listOfUsers = userService.getAllUsers();
			model.addAttribute("user", new User());
			model.addAttribute("listOfUsers", listOfUsers);
			return "userDetails2";
		}
		
		@RequestMapping(value = "/usershome", method = RequestMethod.GET, headers = "Accept=application/json")
		public String goToHomePage3() {
			return "user";
		}
		

		@RequestMapping(value = "/getUser/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public User getUserByid(@PathVariable int id) {
			return userService.getUser(id);
		}
		@RequestMapping(value = "/addUser", method = RequestMethod.POST, headers = "Accept=application/json")
		public String addUser(@ModelAttribute("user") User user) {	
			if(user.getId()==0)
			{
				userService.addUser(user);
			}
			else
			{	
				userService.updateUser(user);
			}

			return "redirect:/getAllUsers1";
		}		
			

		@RequestMapping(value = "/updateUser/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public String updateUser(@PathVariable("id") int id,Model model) {
			model.addAttribute("user", this.userService.getUser(id));
			model.addAttribute("listOfUser", this.userService.getAllUsers());
			return "userDetails";
		}
		@RequestMapping(value = "/updateUser", method = RequestMethod.GET, headers = "Accept=application/json")
		public String updateUser1(@RequestParam("id") int id,Model model) {
			model.addAttribute("user", this.userService.getUser(id));
			model.addAttribute("listOfUser", this.userService.getAllUsers());
			return "userDetails";
		}
		
		@RequestMapping(value = "/resetRole/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public String updateUser2(@PathVariable("id") int id,Model model) {
			model.addAttribute("user", this.userService.getUser(id));
			model.addAttribute("listOfUser", this.userService.getAllUsers());
			return "userDetails3";
		}
		@RequestMapping(value = "/passwordReset/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public String updateUser3(@PathVariable("id") int id,Model model) {
			model.addAttribute("user", this.userService.getUser(id));
			model.addAttribute("listOfUser", this.userService.getAllUsers());
			return "userDetails4";
		}
		
		@RequestMapping(value = "/deleteUser/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public String deleteUser(@PathVariable("id") int id) {
			userService.deleteUser(id);
			return "redirect:/getAllUsers1";

		}
		
		
		@Autowired
		TimeSheetService timeSheetService;
		
		@RequestMapping(value = "/timesheet", method = RequestMethod.GET)
		public String goToHomePage(Model model) {

			List<User> listOfEmployee = userService.getAllUsers();
			model.addAttribute("User", new User());
			model.addAttribute("listOfEmployee", listOfEmployee);
			System.out.println(listOfEmployee);
			return "index";
		}

		@RequestMapping(value = "/getAlldata", method = RequestMethod.GET, headers = "Accept=application/json")
		public String getAllData(@RequestParam("e_id") int e_id, @RequestParam("checkin_Date") String checkin_Date,
				@RequestParam("checkout_Date") String checkout_Date, Model model) {

			List<TimeSheet> listOfData = this.timeSheetService.getAllData(e_id, checkin_Date, checkout_Date);
			model.addAttribute("timesheet", new TimeSheet());
			model.addAttribute("listOfData", listOfData);
			System.out.println("In controller");
			System.out.println(listOfData.isEmpty());
			return "timeDetails";
		}

	
	
	
}	

