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
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>
<body>


			
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
			<table class="table table-hover">
				<c:forEach var="p" items="${product}">
				<tr><td>Product Image</td><td></td><td><img src="<c:out value="${p.getImagepath()}"> </c:out>"  id="myImg" height="100" width="100"  /></td></tr>
					<div id="myModal" class="modal">
					  <span class="close">&times;</span>
					  <img class="modal-content" id="img01">
					  <div id="caption"></div>
					</div>
				
				<tr><td>Product ID</td><td></td><td><c:out value="${p.getUn_id()}" ></c:out></td></tr>
				<tr><td>Brand Name</td><td></td><td><c:out value="${p.getBrand_name()}" ></c:out></td></tr>
				<tr><td>Product Name</td><td></td><td><c:out value="${p.getProduct_name()}"> </c:out></td></tr>
				<tr><td>Quantity</td><td></td><td><c:out value="${p.getQuantity()}"> </c:out></td></tr>
				<tr><td>Product Type</td><td></td><td><c:out value="${p.getProduct_type()}"> </c:out></td></tr>
				<tr><td>Color</td><td></td><td><c:out value="${p.getColor()}"> </c:out></td></tr>
				<tr><td>Size</td><td></td><td><c:out value="${p.getSize()}"> </c:out></td></tr>
				<tr><td>Price</td><td></td><td><c:out value="${p.getPrice()}"> </c:out></td></tr>
				<tr><td>Gender</td><td></td><td><c:out value="${p.getGender()}"> </c:out></td></tr>
				</c:forEach>
			</table>
		</div>
	</div>
<!-- The Modal -->

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