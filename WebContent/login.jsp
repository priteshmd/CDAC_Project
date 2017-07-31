<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Store Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<script>
    history.forward();
</script>
<body>
	<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null) {
	%>
	<div style="color: red">
		<h3><%=msg%></h3>
	</div>
	<%
		}
	%>
	<div class="container">
		<h2>Store Login</h2>
		<span id="txt"></span>
		<form action="Loginservlet" method="post">
			<div class="form-group">
				<label for="email">User Name:</label> <input type="text"
					class="form-control" id="email" placeholder="Enter Shop UserName"
					name="Shop_Name" minlength="3">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pwd" placeholder="Enter password"
					name="pwd" minlength="3">
			</div>
	
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
	<br><br><br><br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>
