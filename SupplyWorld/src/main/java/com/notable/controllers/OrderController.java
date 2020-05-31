package com.notable.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.notable.business.AdminOrder;
import com.notable.business.OrderDetails;
import com.notable.business.User;
import com.notable.data.OrderDetailsMapper;
import com.notable.data.OrdersJDBCTemplate;
import com.notable.data.UserMapper;

@Controller
public class OrderController {

	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	OrdersJDBCTemplate OrdersJdbc;
	
	@RequestMapping("fulfill")
	public String fulfillOrder(HttpServletRequest request) {
		
		System.out.println("In the fulfillOrder method");
		
		// Need to update the status column to Complete on the orderDetails table
		OrdersJdbc.fulfill("update orderdetails set status = 'Complete'");
		
		return "views/orderFulfilled";
		
	}
	
	@GetMapping("myOrders")
	public String showMyOrders(HttpServletRequest request) {

		HttpSession session = request.getSession();

//		List<User> user = (List<User>) session.getAttribute("users");
//		int userId = user.get(0).getUserId();
//		System.out.println(userId);
		
		int userId = 1;

		List<AdminOrder> orderDetails = jdbcTemplate.query(
				"select orderId, ProductId, Name, Quantity, Status from orderdetails", new OrderDetailsMapper());

		session.setAttribute("orderDetails", orderDetails);

		

		return "views/fulfillment";

	}
}
