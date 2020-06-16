<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="java.io.*,java.util.*,java.sql.*" %>
	<%@ page import="javax.servlet.*" %>
	<%! String username,password;
		Connection connection=null;
	%>
	<%
		username = request.getParameter("txtUsername");
		password = request.getParameter("txtPassword");
		
		if(isLoggedIn()){
			session.setAttribute("username", username);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("sessionJsp.jsp");
			dispatcher.forward(request,response);
			
		} else{
			%>
			<%@ include file="callsession.jsp" %>
			<%
			out.println("Wrong credentials");
				
		}
		%>
	<%!
		boolean isLoggedIn(){
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root",""); 
				PreparedStatement preparedStatement = connection.prepareStatement("select username,password from myTable where username=?");
				preparedStatement.setString(1,username);
				ResultSet reset = preparedStatement.executeQuery();
				while(reset.next()){
					if(reset.getString(1).equals(username) && reset.getString(2).equals(password)){
						return true;
						
					}else{
						return false;
					}
				}
				reset.close();
				preparedStatement.close();
				connection.close();
				
			}catch(ClassNotFoundException cnf){
				cnf.printStackTrace();
			} catch(SQLException sqe){
				sqe.printStackTrace();
			} 
			
			return false;
		}
	%>
	
</body>
</html>