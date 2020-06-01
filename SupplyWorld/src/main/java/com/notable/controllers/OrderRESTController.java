package com.notable.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.notable.business.AdminOrder;
import com.notable.data.AdminOrdersMapper;
import com.notable.data.OrderDetailsMapper;
import com.notable.data.OrdersJDBCTemplate;

@RestController
public class OrderRESTController {

	@Autowired
	JdbcTemplate jdbc;
	
	@Autowired
	OrdersJDBCTemplate OrdersJdbc;
	
	@RequestMapping("orders")
	public List<AdminOrder> getOrders(HttpServletRequest request) {
		
		
		
		// Need to pull the orderDetails from db
		List<AdminOrder> orders = jdbc.query("select * from orderdetails", new AdminOrdersMapper());
		
//		for (AdminOrder item : orders) {
//			System.out.println("ProductId OrdersRESTController: " + item.getProductId()); 
//		}
		
		


		return orders;
	}
	
	@RequestMapping("pending")
	public List<AdminOrder> pendingOrders(HttpServletRequest request){
		List<AdminOrder> pending = jdbc.query("select * from orderdetails WHERE status = 'processing'", new AdminOrdersMapper());
	
		return pending;
	}
	

	
}
