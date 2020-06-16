<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.util.Date" %>
	<%@ include file="includeFile1.html" %>
	This after including file
	Today is <%= new Date() %>
</body>
</html>