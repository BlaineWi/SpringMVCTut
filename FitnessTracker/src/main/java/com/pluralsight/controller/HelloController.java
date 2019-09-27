package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// ANNOTATIONS

@Controller
public class HelloController {

	// What url are we gonna tie to/what method it ties too
	@RequestMapping(value = "/greeting")
	public String sayHello (Model model) {
		
		// Model is a Hashmap, key of greeting value of Hello World
		model.addAttribute("greeting", "Hello World");
		
		//Ties to hello.jsp
		return "hello";
	}
	
}
