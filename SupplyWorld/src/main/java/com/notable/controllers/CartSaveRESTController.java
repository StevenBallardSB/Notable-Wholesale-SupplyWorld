package com.notable.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.notable.business.Cart;
import com.notable.business.LineItem;
import com.notable.data.OrdersJDBCTemplate;

@RestController
public class CartSaveRESTController {

	@Autowired
	OrdersJDBCTemplate jdbc;
	
	@RequestMapping("cartsave")
	public String cartSave(HttpServletRequest request) {

		Cart cart = new CartSaveService().saveCart();
		
		for (LineItem item : cart.getItems()) {
			// save to the orderdetails database
			int orderId = 1;
			int productId = item.getProduct().getProductId();
			int quantity = item.getQuantity();
			String status = "Processing";
			
			// Update the OrderDetails Table
			jdbc.updateOrderDetails(orderId, productId, quantity, status);
		}
		
		for (LineItem item : cart.getItems()) {
			System.out.println("In CartSaveController " + item.toString());
		}

		return "complete for realz";
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
