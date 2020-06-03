package com.notable.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.notable.business.AdminOrder;
import com.notable.business.Cart;
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
		
		//pull out quantities in order object in notableapplication
		RestTemplate rt = new RestTemplate();
		String url = "http://localhost:8080/updateInventory";
		ResponseEntity<String> response = rt.getForEntity(url, String.class);
		
		String updateStatus = response.getBody();
		System.out.println("Update Status: " + updateStatus);
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
