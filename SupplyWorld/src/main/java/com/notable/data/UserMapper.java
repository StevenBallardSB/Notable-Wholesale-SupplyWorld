package com.notable.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.notable.business.User;

public final class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		User user = new User();
		user.setEmail(rs.getString("email"));
		user.setPassword(rs.getString("password"));
		return user;
	}

}
