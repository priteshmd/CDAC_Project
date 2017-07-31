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


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="res/css/style14.css" rel="stylesheet">
<style>
#hd1{
visibility: hidden;
}
</style>
<script>
function goBack() {
    window.history.back();
}
</script>
</head>

<body>
	<br>
	&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary" onclick="goBack()">Go Back</button>
<%
		String un_id = (request.getParameter("id"));

		Session ses = HibernateConfiguration.getSession();

		Criteria cr = ses.createCriteria(Addproducts.class)
				.add(Restrictions.like("un_id",un_id));

		//cr.addOrder(Order.desc("price"));

		List<Addproducts> prod = cr.list();

		pageContext.setAttribute("product",prod);
%>

<div class="container">
	<h3>Product</h3>
		<div class="table-responsive">    
			
				<c:forEach var="p" items="${product}">
				<table class="table table-hover">
				
				<tr><td>Product Image</td><td></td><td><img src="<c:out value="${p.getImagepath()}"> </c:out>"  id="myImg" height="100" width="100"  /></td></tr>
					<div id="myModal" class="modal">
					  <span class="close">&times;</span>
					  <img class="modal-content" id="img01">
					  <div id="caption"></div>
					</div>
				
				<tr><td>Product Id</td><td></td><td><c:out value="${p.getUn_id()}" ></c:out></td></tr>
				<tr><td>Brand Name</td><td></td><td><c:out value="${p.getBrand_name()}" ></c:out></td></tr>
				<tr><td>Product Name</td><td></td><td><c:out value="${p.getProduct_name()}"> </c:out></td></tr>
				<tr><td>Stock</td><td></td><td><c:out value="${p.getQuantity()}"> </c:out></td></tr>
				<tr><td>Product Type</td><td></td><td><c:out value="${p.getProduct_type()}"> </c:out></td></tr>
				<tr><td>Color</td><td></td><td><c:out value="${p.getColor()}"> </c:out></td></tr>
				<tr><td>Size</td><td></td><td><c:out value="${p.getSize()}"> </c:out></td></tr>
				<tr><td>Price</td><td></td><td><c:out value="${p.getPrice()}"> </c:out></td></tr>
				<tr><td>Gender</td><td></td><td><c:out value="${p.getGender()}"> </c:out></td></tr>
				
				</table>
				<hr>
				<c:if test="${p.getQuantity()==0 }">
				<h4><u>Get Notified when the product is back in stock</u></h4>
				
				<form class="form-inline" action="notify.jsp" method="post">
				<div class="form-group">
				<p id="hd1"> <input type="text" value="<c:out value="${p.getUn_id()}"></c:out>"  name="id"></p>
				<label>Email Id:</label>
				<input type="email" class="form-control" name="emailid">
				<button type="submit" class="btn btn-default">Submit</button>
				</form>
				
				</div>
				</c:if>
				</c:forEach>
			
		</div>
	</div>

<!-- The Modal --></h3>
<br><br><br><br>
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
    modal.style.display = "none";
}
</script>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>