package com.supply.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.supply.business.AdminOrder;
import com.supply.business.OrderDetails;

public class OrderDetailsMapper implements RowMapper<AdminOrder> {

	@Override
	public AdminOrder mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		AdminOrder ao = new AdminOrder();
		
		ao.setOrderId(rs.getInt("OrderId"));
		ao.setProductId(rs.getInt("ProductId"));
		ao.setName(rs.getString("Name"));
		ao.setQuantity(rs.getInt("Quantity"));
		ao.setStatus(rs.getString("Status"));


		return ao;
	}

}
