<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*" %>
    <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		String username="",password="";double amount;
	%>
	<%  
		System.out.println("inside database jsp");
		username= request.getParameter("txtUsername"); 
		password = request.getParameter("txtPassword");
		amount = Double.parseDouble(request.getParameter("txtAmount"));
		System.out.println("Username : " + username+",password : " + password+",amount : " + amount);
		out.println("username : "+username+",password : "+password + ", amount : " + amount);
	
	%>
	<%!
		boolean madeConnection(){
			try {	
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
				PreparedStatement preparedStatment = connection.prepareStatement("insert into mytable values(?,?,?)");
				preparedStatment.setString(1,username);
				preparedStatment.setString(2,password);
				preparedStatment.setDouble(3,amount);
				int number = preparedStatment.executeUpdate();
				if(number>=1){
					System.out.println("inside if condition");
					return true;	
				} 
			} catch(ClassNotFoundException cnf){
				cnf.printStackTrace();
			} catch(SQLException sql){
				sql.printStackTrace();
			}
			
			return false;
		}
	%>	
	
	<%out.println("is Added : " + madeConnection()); %>

</body>
</html>