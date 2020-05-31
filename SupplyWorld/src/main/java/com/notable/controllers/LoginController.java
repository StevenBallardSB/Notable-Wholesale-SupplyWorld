package com.notable.controllers;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.notable.business.User;
import com.notable.data.UserMapper;

@Controller
public class LoginController {

	@Autowired
	JdbcTemplate jdbc;

	@PostMapping("login")
	public String loginUser(String email, String password, HttpServletResponse response, HttpServletRequest request) {
		
		// should only be one user in the list
		// Make email unique in the users table to ensure this
		List<User> users = jdbc.query("SELECT * FROM users WHERE email = '" + email + "'",
				new UserMapper());
		
		if (users.isEmpty()) {
			return "views/loginInvalid";
		}
		
		String emailResult = users.get(0).getEmail();
		String passwordResult = users.get(0).getPassword();

		
		

		// verifying username and password, and if authenticated will create firstname cookie and login Cookie
		if (emailResult.equals(email) && passwordResult.equals(password)) {
			System.out.println("User is authenticated");
			
			HttpSession session = request.getSession();
			session.setAttribute("users", users);

		} else {
		
			return "views/loginInvalid";
		}

		return "views/home";
	}


}
