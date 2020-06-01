package com.supply.business;

import java.text.NumberFormat;

public class OrderDetails {

	private int orderId;
	private String productName;
	private double price;
	private int quantity;
	private double productTotal;
	private double orderTotal;
	
	public String getProductCurrencyFormat() {
		NumberFormat currency = NumberFormat.getCurrencyInstance();
		return currency.format(productTotal);
	}
	
	public String getOrderCurrencyFormat() {
		NumberFormat currency = NumberFormat.getCurrencyInstance();
		return currency.format(orderTotal);
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getProductTotal() {
		return productTotal;
	}

	public void setProductTotal(double productTotal) {
		this.productTotal = productTotal;
	}

	public double getOrderTotal() {
		return orderTotal;
	}

	public void setOrderTotal(double orderTotal) {
		this.orderTotal = orderTotal;
	}

	@Override
	public String toString() {
		return "OrderDetails [orderId=" + orderId + ", productName=" + productName + ", price=" + price + ", quantity="
				+ quantity + ", productTotal=" + productTotal + ", orderTotal=" + orderTotal + "]";
	}
	
	

}
