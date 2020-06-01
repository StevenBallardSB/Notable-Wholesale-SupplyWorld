package com.supply.data;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class OrdersJDBCTemplate implements OrdersDAO {

	@Autowired
	private JdbcTemplate jdbc;

	public void updateOrderDetails(int orderId, int productId, String prodName, int quantity, String status) {

		// String innerSql = "SELECT orderid FROM orders ORDER BY orderid DESC LIMIT 1";

		String sql = "INSERT INTO OrderDetails (OrderID, ProductID, Name, Quantity, Status) VALUES (?, ?, ?, ?, ?)";
		jdbc.update(sql, orderId, productId, prodName, quantity, status);

	}

	public void fulfill(String sql) {

		// String innerSql = "SELECT orderid FROM orders ORDER BY orderid DESC LIMIT 1";

		// String sql = "update orderdetails set status = 'Complete';";
		jdbc.update(sql);

	}

}
