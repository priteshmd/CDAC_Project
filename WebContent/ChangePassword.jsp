<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
#b{
padding-left: 10%;
padding-right: 10%;
}
</style>
</head>
<body> 
<br>
	&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary"><a href="shopkeeper.jsp"  style="color:white">Go back</a></button>
<div id="b">
<h1>Change Password</h1>
<hr>
<div class="container">
<div class="table-responsive">
<form action="ChangePassw" method="post">
<table  class="table">
<tr><td><input type="text" class="col-sm-6" name="oldpwd" placeholder="Enter Old Password" class="form-control"/></td></tr>
<tr><td><input type="text" class="col-sm-6"  name="pwd" placeholder="Enter New Password" class="form-control"/></td></tr>
<tr><td><input type="submit" value="Change Password" class="btn btn-white"/></td></tr>
</table>
	</form>
</div>
</div>
</div>
<br><br><br>
<br><br><br>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>
</body>
</html>