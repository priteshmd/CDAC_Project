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
<title>Insert title here</title>

</head>
<style>
#h{
visibility: hidden;
}
</style>
<body>

<%
		String un_id = (request.getParameter("id"));

		Session ses = HibernateConfiguration.getSession();

		Criteria cr = ses.createCriteria(Addproducts.class)
				.add(Restrictions.eq("un_id",un_id));

		//cr.addOrder(Order.desc("price"));

		List<Addproducts> prod = cr.list();

		pageContext.setAttribute("product",prod);
%>
	<header>
	<div style="border:1px solid; background-color: #D3D3D3;width=100%:">
		<div  style="float:left;width:35%;padding:5px;">
		&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary">
			<a href="update.jsp"  style="color:white">
				Go back
			</a>
		</button>
		</div>
		<div style="width:70%">
		<h3>Update your Product</h3>
		</div>
	</div>
	</header>
<div class="container">
	
		<div class="table-responsive">    
		<form method="post" action="Allupdate.jsp">
			<table class="table table-hover"> 
			
				<c:forEach var="p" items="${product}">
				<p></p>
				<tr><td>Product Image</td><td></td><td><img src="<c:out value="${p.getImagepath()}"> </c:out>"  height="100" width="100"  /></td></tr>
				<tr><td>Product ID </td><td></td><td><c:out value="${p.getUn_id()}" ></c:out></td><td id="h"><input type="text" name="un_id" value="<c:out value="${p.getUn_id()}" ></c:out>" ></td></tr>
				<tr><td>Brand Name</td><td></td><td><input type="text" name="brand_name" value="<c:out value="${p.getBrand_name()}" ></c:out>" disabled></td></tr>
				<tr><td>Product Name</td><td></td><td><input type="text" name="product_name" value="<c:out value="${p.getProduct_name()}"> </c:out>" disabled></td></tr>
				<tr><td>Quantity</td><td></td><td><input type="number" name="quantity" value="<c:out value="${p.getQuantity()}"> </c:out>" min="0" max="100"></td></tr>
				<tr><td>Product Type</td><td></td><td><input type="text" name="p_type" value="<c:out value="${p.getProduct_type()}"> </c:out>" disabled></td></tr>
				<tr><td>Color</td><td></td><td><input type="text" name="color" value="<c:out value="${p.getColor()}"> </c:out>"></td></tr>
				<tr><td>Size</td><td></td><td><input type="text" name="size" value="<c:out value="${p.getSize()}"> </c:out>"></td></tr>
				<tr><td>Price</td><td></td><td><input type="text" name="price" value="<c:out value="${p.getPrice()}"> </c:out>"></td></tr>
				<tr><td>Gender</td><td></td><td><input type="text" name="gender" value="<c:out value="${p.getGender()}"> </c:out>" disabled></td></tr>
				</c:forEach>
				<tr><td></td><td><button type="submit" class="btn btn-primary  btn-block">Update</button></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>