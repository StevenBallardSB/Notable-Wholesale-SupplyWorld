package com.notable.data;

import javax.sql.DataSource;

public interface OrdersDAO {
	
	public void updateOrderDetails(int orderId, int productId, int quantity, String status);
	
	public void fulfill(String sql);

}