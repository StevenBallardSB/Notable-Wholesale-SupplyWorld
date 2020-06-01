package com.supply.business;

import java.text.NumberFormat;
import java.io.Serializable;

public class LineItem implements Serializable {

	private int lineItemId;
    private Product product;
    private int quantity = 1;

    public LineItem() {
    }

    public int getLineItemId() {
        return lineItemId;
    }

    public void setLineItemId(int lineItemId) {
        this.lineItemId = lineItemId;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Product getProduct() {
        return product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getTotal() {
        double total = product.getPrice() * quantity;
        return total;
    }

    public String getTotalCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.getTotal());
    }

	@Override
	public String toString() {
		return "LineItem [lineItemId=" + lineItemId + ", product=" + product + ", quantity=" + quantity + "]";
	}
    
    
}
