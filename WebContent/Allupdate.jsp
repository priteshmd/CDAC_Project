<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="test.Addproducts"%>
<%@ page import="java.sql.*" %>
<%@ include file = "header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
#h{
visibility: hidden;
}
#b{
padding-left: 10%;
padding-right: 10%;
}
</style>
</head>
<body>

<%
		
		String un_id = (request.getParameter("un_id").toString());
		int price = Integer.parseInt(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String color = request.getParameter("color");
		String size = request.getParameter("size");
		try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mall_db", "root", "");
           Statement st=con.createStatement();
           st.executeUpdate("update product set price='"+price+"',quantity='"+quantity+"',size='"+size+"' where un_id='"+un_id+"'");
		}
		catch (Exception e){
		System.out.println(e);
		}
		
%>
	<%
		if(quantity!=0)
		{
	%>
		 <div  id="b">
		 <div class="alert alert-success">
	    <strong>Success!</strong>Product Details Updated Successfully
  		</div>
  		<div>
		<h2>Send email to notify customers</h2><br>
		<form action="sendmail.jsp" method="post">
		<p id="h"><input type="text" value="<%=un_id %>" name="un_id" ></p>
		<h4>Product Id :<%=un_id %></h4><br>
		<button type="button" class="btn btn-primary  btn-lg  "><a href="shopkeeper.jsp" style="color:white" >Go back</a></button>
		<button class="btn btn-success btn-lg  type="submit">Mail List</button>
		</form>
		</div>
		</div>
		<% }
		else{
			response.sendRedirect("update.jsp");
		}
		%>
		




<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>