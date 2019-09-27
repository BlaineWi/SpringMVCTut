package com.pluralsight.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.pluralsight.model.Goal;

@Controller
@SessionAttributes("goal") // Which attribute I want to store in my session scope of session
public class GoalController {

	// Object stays available to use passed by reference / pointer back to actual
	
	@RequestMapping(value = "addGoal", method = RequestMethod.GET)
	public String addGoal(Model model) {
		
		Goal goal = new Goal();
		goal.setMinutes(10);
		
		model.addAttribute("goal", goal);
		return "addGoal";
	}
	
	//bindingResult is boolean = true if there is an error
	
	@RequestMapping(value = "addGoal", method = RequestMethod.POST)
	public String updateGoal(@Valid @ModelAttribute("goal") Goal goal, BindingResult result) {
		
		System.out.println("Result has errors: " + result.hasErrors());
		System.out.println("Minutes updated: " + goal.getMinutes());
		
		// Stays on error page
		if (result.hasErrors()) {
			return "addGoal";
		}
		// Redirects back to addMinutes page
		return "redirect:addMinutes.html";

	}
}
