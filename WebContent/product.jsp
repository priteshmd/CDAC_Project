<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="java.security.*" %>
<%@ include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
#td {
	visibility: hidden;
}
#b{
padding-left: 10%;
padding-right: 10%;
}
</style>



</head>
<body>
<div class="container">
	<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null) {
	%>
	  <div class="alert alert-success">
	    <strong>Success!</strong><%=msg%>
  	</div>
	<%
		}
	%>
	</div>
	<header>
	<div style="border:1px solid; background-color: #D3D3D3;width=100%:">
		<div  style="float:left;width:35%;padding:5px;">
		&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary">
			<a href="shopkeeper.jsp"  style="color:white">
				Go back
			</a>
		</button>
		</div>
		<div style="width:70%">
		<h2>Add Your Product Here</h2>
		</div>
	</div>
	</header>

			
			<%
			if (null==session.getAttribute("Shop_Name")) {
			    // Freshly created.
				 response.sendRedirect("login.jsp");
			}
			else 
			{
				String Shop_Name = (session.getAttribute("Shop_Name").toString());
				String[] shop = Shop_Name.split("_");
				String myshop = shop[0];
			
	%>
	<div  id="b">
	<div class="container">
		<div>
			<h4>
				<label class="control-label col-sm-3" >Shop Name:</label>			
					<div class="col-sm-6">
				<label ><%=myshop.toUpperCase()%> Store</label>
			</div>	
		</h4>
	</div>

		<div>
			
			<form class="form-horizontal" action="FormServlet" name="myForm" method="post" id="myForm">
				<div id="td" class="form-group">
				<input type="text" class="form-control"
						name="Shop_Name" value="<%=Shop_Name%>" form="myForm">
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" >Product Name:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="product_name"
							placeholder="Enter Product Name" name="product_name" form="myForm" minlength="4" required>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">Brand Name:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="brand_name" 
							placeholder="Enter Brand Name" name="brand_name" form="myForm" required minlength="3">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">Quantity:</label>
					<div class="col-sm-6">
						<input type="number" class="form-control" id="quantity"
							placeholder="Enter quantity" name="quantity"  min="0" max="100" form="myForm" required>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">Product Type:</label>
					<div class="col-sm-6">
						
					<select name="product_type" form="myForm" class="form-control">
						  <option  value="">select product type</option>
						  <option value="Footwear">Footwear</option>
						  <option value="Mens_Fashion">Mens Fashion</option>
						  <option value="Womens_Fashion">Womens Fashion</option>
						 
					</select>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">Color:</label>
					<div class="col-sm-6">
						<select name="color" form="myForm" class="form-control" >
						  <option value="">select</option>
						  <option value="Black">Black</option>
						  <option value="Yellow">Yellow</option>
						  <option value="Pink">Pink</option>
						  <option value="Green">Green</option>
						  <option value="Grey">Grey</option>
						  <option value="Orange">Orange</option>
						  <option value="Red">Red</option>
						  <option value="Blue">Blue</option>
						  <option value="White">White</option>
						  <option value="Violet">Violet</option>
					</select>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">Size:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="size"
							placeholder="Enter size" name="size"  form="myForm" required>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">Price Rs:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="price"
							placeholder="Enter price" name="price" form="myForm" required>
					</div>
				</div>
				<div class="form-group">
				 <label class="control-label col-sm-2">Gender:</label>
				 <div class="col-sm-6">
				  <label class="radio-inline">
				      <input type="radio" name="gender" value="Men" form="myForm">Men
				    </label>
				 <label class="radio-inline">
				      <input type="radio" name="gender" value="Women" form="myForm">Women
				 </label>
				 </div>
				 </div>
				 				 
				 <div class="form-group">
					<label class="control-label col-sm-2">Upload Image:</label>
					<div class="col-sm-6">
						<input type="file" class="form-control" id="image"	name="image" form="myForm">
					</div>
				</div>
				 <div class="form-group">        
	      			<div class="col-sm-offset-2 col-sm-6">
	       				 <button type="submit" class="btn btn-primary  btn-block" form="myForm">Submit</button>
	      			</div>
	   			</div>
	  </form>
	</div>
	<%
		}
	%>
				<br> <br>
		</div>
</div>
		<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>