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
		
		List<AdminOrder> orders = jdbc.query("select * from orderdetails", new AdminOrdersMapper());

		return orders;
	}
	

	
}
