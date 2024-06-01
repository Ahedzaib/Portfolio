<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
 <%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
  <%@page isELIgnored= "false"%> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help Centre</title>
</head>
<body>
<h1>Hi Im here to Assist you</h1>

	<%-- <%
	String st = (String) request.getAttribute("Department");
	String name = (String) request.getAttribute("Name");
	LocalDateTime ldt = (LocalDateTime) request.getAttribute("date");
	%>
<h2>Iam graduate of <%=st %></h2>
<h2>my name is <%=name %></h2>
<h3>current date and time is <%=ldt%></h3> --%>

	<h2>The Department name is ${Department }</h2>
	<h2>the name of person is ${Name }</h2>
	<h3>Date and Time is ${date }</h3>
	<hr>
	
	<c:forEach var="item" items="${list}"> 
	<h1>${item }</h1>
	<%-- <h1> <c:out value="${item }"></c:out> </h1> --%>
	</c:forEach>
	
</body>
</html>