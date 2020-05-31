package com.notable.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.notable.business.AdminOrder;
import com.notable.business.Cart;
import com.notable.business.LineItem;
import com.notable.data.AdminOrdersMapper;
import com.notable.data.OrdersJDBCTemplate;

@RestController
public class CartSaveRESTController {

	@Autowired
	OrdersJDBCTemplate jdbc;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@RequestMapping("cartsave")
	public String cartSave(HttpServletRequest request) {

		Cart cart = new CartSaveService().saveCart();
		
		// get the last orderId to add 1 to set the next order Id
		List<AdminOrder> orders = jdbcTemplate.query("SELECT * FROM orderdetails", new AdminOrdersMapper());
		
		int orderId = 1;
		// get the last order
		int dbOrderId = orders.get(orders.size()-1).getOrderId();
		if (dbOrderId == 1) {
			orderId ++;
		}
		if (dbOrderId > 1) {
			orderId = dbOrderId + 1;
		}
		
		
		for (LineItem item : cart.getItems()) {
			// save to the orderdetails database
			
			int productId = item.getProduct().getProductId();
			String prodName = item.getProduct().getName();
			int quantity = item.getQuantity();
			String status = "Processing";
			
			// Update the OrderDetails Table
			jdbc.updateOrderDetails(orderId, productId, prodName, quantity, status);
		}
		
		for (LineItem item : cart.getItems()) {
			System.out.println("In CartSaveController " + item.toString());
		}

		return "Order Complete";
	}

//	private ModelAndView processOrder(ModelAndView mv, Cart cart) {
//		
//		System.out.println("In processOrder");
//		mv.addObject("cart", cart);
//		mv.setViewName("views/fulfillment");
//		return mv;
//		
//		
//	}
}
