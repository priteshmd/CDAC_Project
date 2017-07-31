package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public ChangePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		
		HttpSession session = request.getSession();
		
		String UserId= session.getAttribute("UserId").toString();
		String pwd=request.getParameter("pwd");
		String oldpwd=request.getParameter("oldpwd");
	
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mall_db", "root", "");
			Statement stmt = conn.createStatement();
			
			String sql = "select * from shop where Shop_Name='"+UserId+"'";
			ResultSet rs = stmt.executeQuery(sql);
		
		
			
			if( rs.next()) 
			{ 
				if(rs.getString(2).equals(oldpwd)) 
				{
					
					sql = "update shop set password ='"+pwd+"' where Shop_Name='"+UserId+"' ";
					stmt.executeUpdate(sql);
					
					response.sendRedirect("login.jsp");
					
					

				} 
				else 
				{ 
					out.println("<html><body><h3><span id='txt'>PLEASE ENTER VALID Password<span></h3></body>");
					RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
					rd.include(request, response);
				} 
			}
			
			
		}catch(ClassNotFoundException e)
		{
			System.out.println("Driver Class not found");
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}
		
	}

		
	

		
			
	


