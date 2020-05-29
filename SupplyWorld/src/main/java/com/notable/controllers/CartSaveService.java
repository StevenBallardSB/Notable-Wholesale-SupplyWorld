package com.notable.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.notable.business.Cart;
import com.notable.business.LineItem;

public class CartSaveService {

	public Cart saveCart() {
		
		RestTemplate rt = new RestTemplate();
		String url = "http://localhost:8080/cartsave";
		ResponseEntity<Cart> response = rt.getForEntity(url, Cart.class);
		
		// getting the cart from the NW store
		Cart order = response.getBody();
		
		for (LineItem item : order.getItems()) {
			
			System.out.println("In CartSaveService " + item.toString());
			
		}
		return order;
	}
	
	
	  
	
	
	
}
