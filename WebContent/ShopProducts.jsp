 <%@page import="org.apache.commons.lang.ObjectUtils.Null"%>
 <%@page import="org.hibernate.criterion.Order"%>
<%@page import="test.Addproducts"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="test.HibernateConfiguration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file = "header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<br>
	&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary"><a href="shopkeeper.jsp"  style="color:white">Go back</a></button>
	<%
		String UserId = (String) (session.getAttribute("UserId"));
		Session ses = HibernateConfiguration.getSession();

		 Criteria cr = ses.createCriteria(Addproducts.class)

					.add(Restrictions.like("Shop_Name", UserId));
		 
		List<Addproducts> prodList = cr.list();
		
		pageContext.setAttribute("prodList",prodList);
					
		if(prodList.isEmpty())
		{%>
			<div><h1 style="color: red;">No Product Found</h1></div>
		<%}
		else
			{%>
		
		
<div class="container">
	
		<div class="table-responsive">    
			<table class="table table-hover">
		<tr>
			<th>Product Id.</th>
			<th>Product Name.</th>
			<th>Brand</th>
			<th>Stock</th>
			<th>Product Type</th>
			<th>Color</th>
			<th>Size</th>
			<th>Price</th>
			<th>Gender</th>
			<th>Image</th>
		</tr>
		<c:forEach var="s" items="${prodList}">
			<tr>
				<td><a href=viewproduct.jsp?id=<c:out value="${s.getUn_id()}" ></c:out>><c:out value="${s.getUn_id()}" ></c:out></a></td>
				<td><c:out value="${s.getProduct_name()}"></c:out></td>
				<td><c:out value="${s.getBrand_name()}"></c:out></td>
				<td><c:out value="${s.getQuantity()}"></c:out></td>
				<td><c:out value="${s.getProduct_type()}"></c:out></td>
				<td><c:out value="${s.getColor()}">
					</c:out></td>
				<td><c:out value="${s.getSize()}">
					</c:out></td>
				<td><c:out value="${s.getPrice()}">
					</c:out></td>
				<td><c:out value="${s.getGender()}">
					</c:out></td>
				<td><img src="<c:out value="${s.getImagepath()}"> </c:out>"
					height="50" width="80" /></td>
			</tr>


		</c:forEach>


	</table>
	<%
		}
	%>

</div>
</div>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>