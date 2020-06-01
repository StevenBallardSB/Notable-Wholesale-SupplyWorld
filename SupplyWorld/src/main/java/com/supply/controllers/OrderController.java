package com.supply.controllers;

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

import com.supply.business.AdminOrder;
import com.supply.business.OrderDetails;
import com.supply.business.User;
import com.supply.data.OrderDetailsMapper;
import com.supply.data.OrdersJDBCTemplate;
import com.supply.data.UserMapper;

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

		HashMap<Integer, List<AdminOrder>> hmap = new HashMap<Integer, List<AdminOrder>>();
		List<AdminOrder> itemsPerOrder = new ArrayList<AdminOrder>();
		int tempOrderId = 0;

		for (AdminOrder od : orderDetails) {
			int orderId = od.getOrderId();
			if (orderId != tempOrderId) {
				if (tempOrderId != 0) {
					List<AdminOrder> itemsPerOrderTemp = new ArrayList<AdminOrder>();
					for (AdminOrder item : itemsPerOrder) {
						itemsPerOrderTemp.add(item);
					}
					hmap.put(tempOrderId, itemsPerOrderTemp);
				}
				tempOrderId = orderId;
				itemsPerOrder.clear();
			}

			itemsPerOrder.add(od);
		}

		List<AdminOrder> itemsPerOrderTemp = new ArrayList<AdminOrder>();
		for (AdminOrder item : itemsPerOrder) {
			itemsPerOrderTemp.add(item);
			hmap.put(tempOrderId, itemsPerOrderTemp);
		}

		System.out.println(hmap.toString());
		session.setAttribute("adminOrdersHash", hmap);
		

		return "views/fulfillment";

	}
}