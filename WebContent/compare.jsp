<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "header.jsp" %>
<%@page import="test.Addproducts"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="test.HibernateConfiguration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"	href="res/css/style12.css">

</head>
<body>

<%
		String msg = null;
	try{
		String search[] =  request.getParameterValues("val");
		int i = search.length;
		Session ses = HibernateConfiguration.getSession();
		List<Addproducts> prod1;
		List<Addproducts> prod2;
		List<Addproducts> prod3;
		Criteria cr;
		if(i>=1 && i<=3)
		{
			switch(i)
			{
			case 1:
				
					cr = ses.createCriteria(Addproducts.class)
					.add(Restrictions.like("un_id",search[0]));
					prod1 = cr.list();
					pageContext.setAttribute("product",prod1);
					break;
				
			case 2:		
				
					cr = ses.createCriteria(Addproducts.class)
					.add(Restrictions.like("un_id",search[0]));
					prod1 = cr.list();
					
				
					cr = ses.createCriteria(Addproducts.class)
					.add(Restrictions.like("un_id",search[1]));
					prod2 = cr.list();
					prod1.addAll(prod2);
					pageContext.setAttribute("product",prod1);
					break;
				
			case 3:
					cr = ses.createCriteria(Addproducts.class)
					.add(Restrictions.like("un_id",search[0]));
					prod1 = cr.list();
					
				
					cr = ses.createCriteria(Addproducts.class)
					.add(Restrictions.like("un_id",search[1]));
					prod2 = cr.list();
					prod1.addAll(prod2);
				
					cr = ses.createCriteria(Addproducts.class)
					.add(Restrictions.like("un_id",search[2]));
					prod3 = cr.list();
					prod1.addAll(prod3);
					
					pageContext.setAttribute("product",prod1);
					break;
				
			}
			%>
			<div>
			<button class="btn btn-primary" onclick="goBack()">Go Back</button>
			<h2 style="text-align:center">Comparison of selected Products</h2>
			</div>
		<%}
		else
		{
			msg = "PLEASE DO NOT SELECT MORE THAN 3 PRODUCTS";
			%>
				<div>
				<button onclick="goBack()">Go Back</button>
				</div>
				<div style="color: red">
					<h4><%=msg%></h4>
				</div>
		<%}
	}catch(NullPointerException e)
	{%>
		<div>
		<button class="btn btn-primary" onclick="goBack()" >Go Back</button>
		<h2 style="text-align:center; color:red">Please select products to compare</h2>
		</div>
	<%}
%>
<div>
	 
<c:forEach var="p" items="${product}">
	<div class="columns">
    <ul class="price">
  	<li class="header"><img src="<c:out value="${p.getImagepath()}"> </c:out>"  id="myImg" height="100" width="100"  />
    <li class="header"><c:out value="${p.getBrand_name()}" ></c:out></li>
    <li class="grey"> <c:out value="${p.getProduct_name()}" ></c:out></li>
    <li><c:out value="${p.getQuantity()}" ></c:out></li>
    <li><c:out value="${p.getProduct_type()}" ></c:out></li>
    <li><c:out value="${p.getColor()}" ></c:out></li>
    <li><c:out value="${p.getSize()}" ></c:out></li>
     <li><c:out value="${p.getGender()}" ></c:out></li>
    <li class="grey">RS.<c:out value="${p.getPrice()}" ></c:out></li>
   
  	</ul>

	
		</div>
		</c:forEach>
	</div>
	<script>
			function goBack() {
			    window.history.back();
			}
	</script>
	<br><br><br>
<br><br><br><br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
	<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>
