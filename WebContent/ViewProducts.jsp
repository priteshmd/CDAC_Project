<%@page import="test.Addproducts"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="test.HibernateConfiguration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>

<h2 align="center">Products in your shop:</h2>
<hr>
<%
		Session ses = HibernateConfiguration.getSession();

		Criteria cr = ses.createCriteria(Addproducts.class);

		//cr.addOrder(Order.desc("price"));

		List<Addproducts> prod = cr.list();

		
		pageContext.setAttribute("product",prod);
		
		
%>

<div id="t1">
<center>
	<table border="1" cellpadding="10">
		<tr><th>Product Id</th><th>Brand Name</th><th>Product Name</th><th>Quantity</th><th>Product Type</th>
		<th>Color</th><th>Size</th><th>Price</th><th>Gender</th><th>Product Image</th>
		</tr>
		<c:forEach var="p" items="${product}">
		
		
		<tr >
		<td cellspacing="2%"><c:out value="${p.getUn_id()}" ></c:out></td>
		<td cellspacing="2%"><c:out value="${p.getBrand_name()}" ></c:out></td>
		<td cellspacing="2%"><c:out value="${p.getProduct_name()}"> </c:out></td>
		<td cellspacing="2%"><c:out value="${p.getQuantity()}"> </c:out></td>
		<td cellspacing="2%"><c:out value="${p.getProduct_type()}"> </c:out></td>
		<td cellspacing="2%"><c:out value="${p.getColor()}"> </c:out></td>
		<td cellspacing="2%"><c:out value="${p.getSize()}"> </c:out></td>
		<td cellspacing="2%"><c:out value="${p.getPrice()}"> </c:out></td>
		<td cellspacing="2%"><c:out value="${p.getGender()}"> </c:out></td>
		<td cellspacing="10%"><img  src="${p.getImagepath()}" height="100" width="100"> </img></td>
		
		
		</tr>
		
	
		</c:forEach>
		
	</form>
	</table>
	<br><br><br>
	</center>
	</div>


<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>