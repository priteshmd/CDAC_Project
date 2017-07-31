<%@page import="org.apache.commons.lang.ObjectUtils.Null"%>
<%@page import="org.hibernate.criterion.Order"%>
<%@page import="test.Addproducts"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.criterion.Order"%>
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
    height: 310px;
    overflow: auto;
}
#b1{
background-color:#D3D3D3; 
padding-top:10px;
padding-bottom:5px;
padding-left:15px;

}
</style>
</head>
<body>

	<%
		String search = (String) request.getParameter("id");
		Session ses = HibernateConfiguration.getSession();
		String[] shop = search.split("_");
		String myshop = shop[0];
		Criteria cr;
		List<Addproducts> prodList=null;
		int filter = 0;
		try{
			filter = Integer.parseInt(request.getParameter("sd"));
			System.out.println(filter);
			if(filter!=0)
			{
				switch(filter)
				{
					case 1:
							cr =ses.createCriteria(Addproducts.class)
							.add(Restrictions.like("Shop_Name",search))
							.addOrder(Order.asc("price"));
							prodList = cr.list();
							pageContext.setAttribute("prodList",prodList);
							break;
					
					case 2:
							cr =ses.createCriteria(Addproducts.class)
							.add(Restrictions.like("Shop_Name",search))
							.addOrder(Order.desc("price"));
							prodList = cr.list();
							pageContext.setAttribute("prodList",prodList);
							break;
							
					default:
							cr =ses.createCriteria(Addproducts.class)
							.add(Restrictions.like("Shop_Name",search));					
							prodList = cr.list();
							pageContext.setAttribute("prodList",prodList);
							break;
				}
			}
			
		}catch(NumberFormatException e)
		{
			//System.out.println("EX filter!");
		}

		if(filter==0)
		{
		cr =ses.createCriteria(Addproducts.class)
		.add(Restrictions.like("Shop_Name",search));					
		prodList = cr.list();
		pageContext.setAttribute("prodList",prodList);
		} 
		if (prodList.isEmpty()) {
	%>
	<div>
		<h1 style="color: red;">No Product Found</h1>
	</div>
	<%
		} else {
	%>
		<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null) {
	%>
	<div style="color: red">
		<h5><%=msg%></h5>
	</div>
	<%
		} 
	%>
<div>
<form action="compare.jsp" method="get" name="myForm">
	<div style="width:100%"; id="b1">
			<div class="dropdown"  style="float:left;width:43%">
				<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Sort By
				  <span class="caret"></span></button>
				  <ul class="dropdown-menu">
				    <li><a href="#">By popularity</a></li>
				    <li><a href="ProductList.jsp?id=<%=search%>&sd=1">Price Low to High</a></li>
				    <li><a href="ProductList.jsp?id=<%=search%>&sd=2">Price High to Low</a></li>
				  </ul>
					<button type="submit" class="btn btn-warning"  align="center" >COMPARE</button>
				 	<button type="reset"  class="btn btn-danger" value="Reset" align="top">Reset</button>
			</div>
			<div>
				<h3>The <%=myshop%> Store </h3>
			</div>
	</div>
<div>
<c:forEach var="p" items="${prodList}">

	<div class="col-sm-4 col-lg-4 col-md-4">
    <div class="thumbnail">
        <div class="caption">
            <h4><a href="BrandDetails.jsp?id=<c:out value="${p.getShop_Name()}" ></c:out>"><c:out value="${p.getBrand_name()}" ></c:out></a>
            </h4>
            <p class="pull-right"><a href="myproduct.jsp?id=<c:out value="${p.getUn_id()}" ></c:out>"><img src="<c:out value="${p.getImagepath()}"></c:out>"  height="70" width="70" />
            View Details
            </a></p>
            <p>Shop:<a href="ProductList.jsp?id=<c:out value="${p.getShop_Name()}" ></c:out>"><c:out value="${p.getShop_Name()}" ></c:out></a></p>
            <p><c:out value="${p.getProduct_name()}"> </c:out></p>
            <p>Size:<c:out value="${p.getSize()}"> </c:out></p>
            <h4 class="pull-right">Rs. <c:out value="${p.getPrice()}" ></c:out></h4>
            <p>Gender:<c:out value="${p.getGender()}"> </c:out></p>
            <div class="checkbox">
      		<label><input type="checkbox" name="val" value="${p.getUn_id()}">Add to compare</label>
      		</div>
        </div>
        <div class="ratings">
            <p class="pull-right">Stock:<c:out value="${p.getQuantity()}"> </c:out> pieces left</p>
            <c:if test = "${p.getQuantity() == 0 }">
            <p>Product is out of stock</p>
            </c:if>
            <c:if test = "${p.getQuantity() >= 0 && p.getQuantity() <= 5 }">
            <p>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star-empty"></span>
            </p>
            </c:if>
            <c:if test = "${p.getQuantity() >= 6 && p.getQuantity() <= 10 }">
            <p>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star-empty"></span>
                <span class="glyphicon glyphicon-star-empty"></span>
            </p>
            </c:if>
            <c:if test = "${p.getQuantity() >= 11 }">
            <p>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-star-empty"></span>
                <span class="glyphicon glyphicon-star-empty"></span>
                <span class="glyphicon glyphicon-star-empty"></span>
            </p>
            </c:if>
        </div>
    </div>
</div>&nbsp;&nbsp;&nbsp;
</c:forEach>
</div>
</form>
	<br><br><br>
	<br><br><br>
	<%
		}
	%>

</div>

<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>