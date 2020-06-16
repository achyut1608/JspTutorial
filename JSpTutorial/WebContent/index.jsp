<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Paisa to Rupee Convertor</h2>
	<%
		double value = Double.parseDouble(request.getParameter("txtValue"));
		double rupee = value/100;
	%>
	<%="Value of Rupee : "+ rupee %>
	
</body>
</html>