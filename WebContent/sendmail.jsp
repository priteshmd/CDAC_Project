<%@page import="org.apache.commons.lang.ObjectUtils.Null"%>
<%@page import="org.hibernate.criterion.Order"%>
<%@page import="test.Notify"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.criterion.Order"%>
<%@page import="test.HibernateConfiguration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header1.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
$(document).ready(function() {
    function disableBack() { window.history.forward() }

    window.onload = disableBack();
    window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
});
</script>
<style>
#h{
visibility: hidden;
}
</style>
</head>
<body>

	<%
		String un_id = (String) request.getParameter("un_id");
		Session ses = HibernateConfiguration.getSession();
		Criteria cr;
		List<Notify> mailList=null;
		
		cr =ses.createCriteria(Notify.class)
		.add(Restrictions.like("un_id",un_id));
		mailList = (List<Notify>) cr.list();
		pageContext.setAttribute("mailList",mailList);

			
	%>
	<div>
	<br>
	&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary"><a href="shopkeeper.jsp"  style="color:white">Go back</a></button>
	<% if(mailList.size()!=0)
	{
		 %>
	
	<fieldset align="center"> 
	
	<legend>Email List</legend>
	<form action="mail.jsp" method="post" >
	<c:forEach var="p" items="${mailList}">
	<table align="center">
	<tr><td>
	<input type="checkbox" checked value="<c:out value="${p.getEmail()}"> </c:out>" name="val">
	</td>
	<td></td><td>
	<c:out value="${p.getEmail()}"> </c:out>	</td></tr>
	</c:forEach>
	</table>
	<center><button class="btn btn-success type="submit">Send mail</button></center>
	</form>
	
	
	</fieldset>
	<br>
	<br>
	<%} %>
	<% if(mailList.size()==0)
	{ 

		response.sendRedirect("update.jsp");
	}
	%>
	
	</div>
	</body>
	</html>
	
	
	
	
	
	
	
	
	
	