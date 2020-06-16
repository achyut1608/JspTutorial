<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String username = null;%>
<% 
	username = session.getAttribute("username").toString();	
	session.invalidate();
	out.println(" Hello "+username + " Date : "+ new Date());

%>
</body>
</html>