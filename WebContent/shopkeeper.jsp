<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>

</head>
<body>
	<div id="d1">
		<%
			String Shop_Name = (String) (session.getAttribute("Shop_Name"));
			String[] shop = Shop_Name.split("_");
			String myshop = shop[0];
			session.setAttribute("UserId", Shop_Name);
		%>
		<div>
			<h1 align="center" style="color: gray;"><%=myshop.toUpperCase()%> Store</h1>
		</div>
		<%-- <% session.setAttribute("Shop_Name", UserId); %> --%>
	</div>
	
		<br>
		<div class="well"><h2>View Your Shop's Products :</h2><a href="ShopProducts.jsp"><input type="button" class="btn btn-primary" value="VIEW"></a>
		</div>
		
		<div class="well"><h2>Update Your Shop's Products : </h2><a href="update.jsp"><input type="button" class="btn btn-success" value="UPDATE"></a>
		</div>
		
		
		<div class="well"><h2>Insert new Products : </h2><a href="product.jsp"><input type="button" class="btn btn-info" value="INSERT"></a>
		</div>
		
			 
		
		<br>
		
		<div class="well"><h2>Change Password :</h2><a href="ChangePassword.jsp"> <input type="button" class="btn btn-warning" value="CHANGE"></a></div>
	<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>	
	
</body>
</html>