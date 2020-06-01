package com.supply.data;

import javax.sql.DataSource;

public interface OrdersDAO {
	
	public void updateOrderDetails(int orderId, int productId, String prodName, int quantity, String status);
	
	public void fulfill(String sql);

}