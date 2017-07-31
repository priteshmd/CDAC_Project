package test;

import java.io.IOException;
import java.io.PrintWriter;
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

import java.io.IOException;
import java.sql.Connection;

public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Loginservlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String msg = null;
		String userid = request.getParameter("Shop_Name");
		String pwd = request.getParameter("pwd");
		if (userid != null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mall_db", "root", "");
				Statement stmt = conn.createStatement();

				String sql = "select * from shop where Shop_Name='" + userid + "'";
				ResultSet rs = stmt.executeQuery(sql);

				if (rs.next()) {
					if (rs.getString(2).equals(pwd)) {

						// response.sendRedirect("shopkeeper.jsp");
						// out.println(userid);
						HttpSession session = request.getSession(true);
						session.setAttribute("Shop_Name", userid);
						RequestDispatcher rd = request.getRequestDispatcher("shopkeeper.jsp");
						rd.forward(request, response);
						// response.sendRedirect("shopkeeper.jsp");
						msg = null;

					} else {

						msg = "PLEASE ENTER VALID USERNAME AND PASSWORD";
						request.setAttribute("msg", msg);
						RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
						rd.include(request, response);
					}
				}

				else {
					msg = "PLEASE ENTER VALID USERNAME AND PASSWORD";
					request.setAttribute("msg", msg);
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.include(request, response);
				}

			} catch (ClassNotFoundException e) {
				System.out.println("Driver Class not found");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {
			msg = "PLEASE ENTER VALID USERNAME AND PASSWORD";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}
	}

}
