package com.notable.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.notable.business.OrderDetails;

public class OrderDetailsMapper implements RowMapper<OrderDetails> {

	@Override
	public OrderDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		OrderDetails od = new OrderDetails();
		
		od.setOrderId(rs.getInt("OrderId"));
		od.setProductName(rs.getString("ProductId"));
		od.setQuantity(rs.getInt("Quantity"));


		return od;
	}

}
