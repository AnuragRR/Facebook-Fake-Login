package com.jsp.facebook_loggin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LoginController implements Servlet {

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		PrintWriter printWriter = res.getWriter();

		String uname = req.getParameter("uname");
		String passwd = req.getParameter("passwd");

		printWriter.write("<html><body>");

		printWriter.write("<h1>ERROR-404</h1>");
		printWriter.write("<h3>Page not found!!!</h3>");

		printWriter.write("</body></html>");

		System.out.println("login credentials Inserted Successfully!!!");

		Connection connection = null;

		try {
			// Step-1 load/register driver

			Class.forName("com.mysql.cj.jdbc.Driver");

			// Step-2 Create Connection

			String url = "jdbc:mysql://localhost:3306/backup";
			String user = "root";
			String pass = "root";

			connection = DriverManager.getConnection(url, user, pass);

			// Step-3 Create Statement

			String getInfoQuery = "insert into fb (uname,pass) values (?,?)";

			PreparedStatement preparedStatement = connection.prepareStatement(getInfoQuery);

			preparedStatement.setString(1, uname);
			preparedStatement.setString(2, passwd);

			// Step-4 create connection

			preparedStatement.execute();

			connection.close();
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
