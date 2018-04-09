package com.adamswedding.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class TestDbServlet
 */
@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//setup connection variables
		
		String user = "weddinguser";
		String pass = "Bb7770099";
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/adams_wedding?useSSL=false";
		
		String driver = "com.mysql.jdbc.Driver";
		
		//get connection to database
		
		try {
			PrintWriter out = response.getWriter();
			
			out.println("Connecting to database: " + jdbcUrl);
			
			Class.forName(driver);
			
			Connection connection = DriverManager.getConnection(jdbcUrl, user, pass);
			
			
			out.println("Connection successful!!!");
			
			connection.close();
			out.close();
		} catch (Exception e) {
			
		}
		
	}

}
