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
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.thumbnail{        
    width: 300px; 
    height: 300px;
    overflow: auto;
}
#b1{
background-color:#D3D3D3; 
padding:20px;
}
</style>
</head>
<body>
<div id="b1">
	<%
		String search =  request.getParameter("search").trim();
	
		//System.out.println("searched : " +search);
		
		if (search == null || search == "") {
			response.sendRedirect("home.jsp");
		}

		Session ses = HibernateConfiguration.getSession();

		Criteria cr = ses.createCriteria(Addproducts.class)

				.add(Restrictions.like("product_name", "%" + search + "%"));

		List<Addproducts> prodList = cr.list();
		List<Addproducts> prodList1 = cr.list();

		if (prodList.isEmpty()) {
			cr = ses.createCriteria(Addproducts.class)

					.add(Restrictions.like("brand_name", "%" + search + "%"));

			prodList = cr.list();

		}
		/* else if(prodList.isEmpty()) */
		{
			cr = ses.createCriteria(Addproducts.class)

					.add(Restrictions.like("product_type", "%" + search + "%"));

			prodList1 = cr.list();
			prodList.addAll(prodList1);
		}
		/* if (search != null) {
			cr = ses.createCriteria(Addproducts.class)

					.add(Restrictions.like("Shop_Name", "%" + search + "%"));

			prodList = cr.list();

		} */
		pageContext.setAttribute("prodList", prodList);
		if (prodList.isEmpty()) {
	%>
	<div>
		<h1 style="color: red;">No Product Found</h1>
	</div>
	<%
		} else {
	%>

<center><h3>You searched for: <%=search%></h3></center>
</div>
<c:forEach var="p" items="${prodList}">
<br>
	<div class="col-sm-4 col-lg-4 col-md-4">
    <div class="thumbnail">
        <a href="myproduct.jsp?id=<c:out value="${p.getUn_id()}" ></c:out>"><img src="<c:out value="${p.getImagepath()}"></c:out>"  height="50" width="80" /></a>
        <div class="caption">
            <h4 class="pull-right">Rs. <c:out value="${p.getPrice()}" ></c:out></h4>
            <h4><a href="ProductList.jsp?id=<c:out value="${p.getShop_Name()}" ></c:out>"><c:out value="${p.getBrand_name()}" ></c:out></a>
            </h4>
            <p><c:out value="${p.getProduct_name()}"> </c:out></p>
            <p>Gender:<c:out value="${p.getGender()}"> </c:out></p>
            <p>Size:<c:out value="${p.getSize()}"> </c:out></p>
        </div>
        <div class="ratings">
            <p class="pull-right">Stock:<c:out value="${p.getQuantity()}"> </c:out> pieces left</p>
            <c:if test = "${p.getQuantity() == 0 }">
            <p>Product is out of stock</p>
            </c:if>
            <p>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star-empty"></span>
            </p>
        </div>
    </div>
</div>
</c:forEach>

	<%
		}
	%>

</div>
</div>
<br><br><br>
<br><br><br><br><br><br>
<br><br><br>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>