package ums;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet
{
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
	{
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_test","root","root");
		    PreparedStatement ps = con.prepareStatement("update user set id=?,name=?,email=?,phone=?,password=? where id=?");
		    ps.setInt(1, Integer.parseInt(req.getParameter("id")));
		    ps.setString(2, req.getParameter("name"));
		    ps.setString(3, req.getParameter("email"));
		    ps.setLong(4,Long.parseLong(req.getParameter("phone")));
		    ps.setString(5, req.getParameter("password"));
		    ps.setInt(6, Integer.parseInt(req.getParameter("id")));
		    int row = ps.executeUpdate();
		    PrintWriter pw = res.getWriter();
		    pw.write("<h1>"+row+" user details updated</h1>");
		   
		   ps.close();
		   con.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
	}
}