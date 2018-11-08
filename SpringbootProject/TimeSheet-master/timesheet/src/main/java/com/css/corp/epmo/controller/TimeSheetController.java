package com.css.corp.epmo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.css.corp.epmo.model.Employee;
import com.css.corp.epmo.model.TimeSheet;
import com.css.corp.epmo.service.EmployeeService;
import com.css.corp.epmo.service.TimeSheetService;

@Controller
public class TimeSheetController {

	@Autowired
	TimeSheetService timeSheetService;

	@Autowired
	EmployeeService employeeService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String goToHomePage(Model model) {

		List<Employee> listOfEmployee = employeeService.getAllUsers();
		model.addAttribute("employee", new Employee());
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
