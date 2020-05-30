package com.notable.data;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class OrdersJDBCTemplate implements OrdersDAO {
	
	@Autowired
	private JdbcTemplate jdbc;

	public void updateOrderDetails(int orderId, int productId, int quantity, String status) {
		
		//String innerSql = "SELECT orderid FROM orders ORDER BY orderid DESC LIMIT 1";
		
		String sql = "INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Status) VALUES (?, ?, ?, ?)";
		jdbc.update(sql, orderId, productId, quantity, status);
		
	}

}
