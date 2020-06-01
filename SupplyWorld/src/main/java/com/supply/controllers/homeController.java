package com.supply.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class homeController {

	@GetMapping(value= {"home"})
	public String hrefGo (String name) {
		return "views/" + name;
	}
	
}
