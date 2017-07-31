<%@page import="test.Addproducts"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="test.HibernateConfiguration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@ include file="header1.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<br>
	&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-primary"  onclick="goBack()">Go Back</button>
<%
		String Shop_Name = (String) (session.getAttribute("UserId"));
		String[] shop = Shop_Name.split("_");
		String myshop = shop[0];
		Session ses = HibernateConfiguration.getSession();

		Criteria cr = ses.createCriteria(Addproducts.class)
				.add(Restrictions.like("Shop_Name", Shop_Name));

		//cr.addOrder(Order.desc("price"));

		List<Addproducts> prod = cr.list();

		pageContext.setAttribute("product",prod);
%>
<div class="container">
<div class="table-responsive">
<center><h1>The <%=myshop %> Store</h1></center>
<form method="post" name="form">
	<table class="table table-hover" >
	
		<tr><th>Select</th><th>Product Id</th><th>Brand Name</th><th>Product Name</th><th>Quantity</th><th>Product Type</th>
		<th>Color</th><th>Size</th><th>Price</th><th>Gender</th><th>Product Image</th>
		</tr>
		<c:forEach var="p" items="${product}">
		
		
		<tr>
		<td><a href="ProductUpdate.jsp?id=<c:out value="${p.getUn_id()}" ></c:out>">EDIT</a></td>
		<td><c:out value="${p.getUn_id()}" ></c:out></td>
		<td><c:out value="${p.getBrand_name()}" ></c:out></td>
		<td><c:out value="${p.getProduct_name()}"> </c:out></td>
		<td><c:out value="${p.getQuantity()}"> </c:out></td>
		<td><c:out value="${p.getProduct_type()}"> </c:out></td>
		<td><c:out value="${p.getColor()}"> </c:out></td>
		<td><c:out value="${p.getSize()}"> </c:out></td>
		<td><c:out value="${p.getPrice()}"> </c:out></td>
		<td><c:out value="${p.getGender()}"> </c:out></td>
		<td><img src="<c:out value="${p.getImagepath()}"> </c:out>"  height="100" width="100"  /></td>
		</tr>
		</c:forEach>	
	</table>
	</form>
	<br><br><br>
	</div>
	</div>
	<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>