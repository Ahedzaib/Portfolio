<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>
<h1> my first view page</h1>
<h1>called by home controller</h1> 
<h2>url /home</h2>
<%
String name = (String) request.getAttribute("name");
Integer no = (int) request.getAttribute("value"); 
@SuppressWarnings("unchecked")
List<String> bikeList = (List<String>) request.getAttribute("bike");
%>

<h2>
Name is
 <%=name%>
</h2>
<h2> <%=no%></h2>

    <%
          for(String g: bikeList){
	%>
	<h3><%=g%></h3>
<% 	     
}
%>

</body>
</html>