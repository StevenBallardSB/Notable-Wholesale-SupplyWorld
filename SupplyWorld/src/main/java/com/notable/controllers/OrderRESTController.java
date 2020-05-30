package com.notable.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.notable.business.AdminOrder;
import com.notable.business.Cart;
import com.notable.business.LineItem;
import com.notable.data.OrdersJDBCTemplate;

@RestController
public class OrderRESTController {

	@Autowired
	OrdersJDBCTemplate jdbc;
	
	@RequestMapping("orders")
	public AdminOrder getOrders(HttpServletRequest request) {
		
		AdminOrder order = new AdminOrder();
		
		// Need to pull the orderDetails from db
		
		// Put data in the AdminOrder object

		return order;
	}
}
