package com.notable.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.notable.business.AdminOrder;

public class AdminOrdersMapper implements RowMapper<AdminOrder> {

	@Override
	public AdminOrder mapRow(ResultSet rs, int rowNum) throws SQLException {

		AdminOrder ao = new AdminOrder();

		ao.setOrderId(rs.getInt("OrderId"));
		ao.setProductId(rs.getInt("ProductId"));
		ao.setQuantity(rs.getInt("Quantity"));
		ao.setStatus(rs.getString("Status"));

		return ao;
	}

}
