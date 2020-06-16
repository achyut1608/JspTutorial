<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		double kms = Double.parseDouble(request.getParameter("txtkmtomiles"));
	    double miles = kms/1.6;
	    
	%>
	<%= "miles : + "+miles %>
</body>
</html>