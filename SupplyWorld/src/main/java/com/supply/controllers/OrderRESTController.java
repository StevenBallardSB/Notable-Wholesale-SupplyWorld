package com.supply.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.supply.business.AdminOrder;
import com.supply.data.AdminOrdersMapper;
import com.supply.data.OrderDetailsMapper;
import com.supply.data.OrdersJDBCTemplate;

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
	

	
}
