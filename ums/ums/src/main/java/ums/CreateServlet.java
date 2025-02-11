package ums;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/create")
public class CreateServlet extends HttpServlet
{
   @Override
   public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
   {
	    int id = Integer.parseInt(req.getParameter("id"));
	    String name = req.getParameter("name");
	    String email = req.getParameter("email");
	    long phone = Long.parseLong(req.getParameter("phone"));
	    String password = req.getParameter("password");
	   
        try 
        {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_test", "root", "root");
			PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setLong(4, phone);
			ps.setString(5, password);
			
			int row = ps.executeUpdate();
			
			PrintWriter pw = res.getWriter();
			pw.write("<h1>"+row+" user details entered successfully</h1>");
			
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
   }
}