package com.supply.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.supply.business.Cart;

@RestController
public class SWOrderController {
	
	@RequestMapping("order")
	public String recieveOrder() {
		
		
		
		System.out.println("RECIEVED!!");
		
		return "hear you loud and clear";
	}

}
