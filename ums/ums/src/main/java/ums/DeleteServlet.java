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

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet
{
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
	{
		int id = Integer.parseInt(req.getParameter("id"));
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_test","root","root");
				PreparedStatement ps=con.prepareStatement("delete from user where id =?");
				ps.setInt(1, id);
				int row = ps.executeUpdate();
				
					PrintWriter pw = res.getWriter();
					pw.write("<h1>"+row+" User Details Deleted Successfully</h1>");
					
					RequestDispatcher rd = req.getRequestDispatcher("all");
					rd.include(req, res);
				
					ps.close();
					con.close();
					
					
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
	}
}
