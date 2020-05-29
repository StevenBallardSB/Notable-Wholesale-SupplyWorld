package com.notable.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.notable.business.Cart;

@RestController
public class CartSaveController {

	@RequestMapping("cartsave")
	public String cartSave() {
		
		Cart cart = new CartSaveService().saveCart();
		
		return "complete for realz";
	}
}
