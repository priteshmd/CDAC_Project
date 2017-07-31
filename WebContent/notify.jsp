<%@page import="test.Addproducts"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="test.HibernateConfiguration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
function goBack() {
    window.history.back();
}
</script>
</head>
<body>

<%
		String id = (request.getParameter("id").toString());
		String email = request.getParameter("emailid").toString();
		
		try{
		   Class.forName("com.mysql.jdbc.Driver");
		   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mall_db", "root", "");
		   Statement st=con.createStatement();
		   st.executeUpdate("insert into notify (un_id,email) values ('"+id+"','"+email+"')");
		
		}
		catch (Exception e){
		System.out.println(e);
		}
%>
 <div class="alert alert-success">
	    <strong>Success!</strong>Email is stored Successfully
  	</div>
&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-white"  onclick="goBack()">Go Back</button>



<br><br><br><br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>