<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		int quantity = 0;
		double totalBill=0.0d;
		String type="",gender=""; 
	%>
	<%
		quantity = Integer.parseInt(request.getParameter("txtQuantity"));
		type = request.getParameter("txtType");
		gender = request.getParameter("txtGender");
	%>
	<%!
		double price(){
			double totalBillAmount=0.0d,total = 0.0d;
			if(gender.equals("Male")){
				if(type.equals("Small")){
					total = quantity*100;
					totalBillAmount = total-(total*0.05);
				} else if(type.equals("Medium")){
					total = quantity*200;
					totalBillAmount = total-(total*0.05);
				} else if(type.equals("Large")) {
					total = quantity*300;
					totalBillAmount = total-(total*0.05);
				}
			} else if(gender.equals("Female")){
				if(type.equals("Small")){	
					total = quantity*100;
					totalBillAmount = total-(total*0.1);
				} else if(type.equals("Medium")){
					total = quantity*200;
					totalBillAmount = total-(total*0.1);
				} else if(type.equals("Large")){
					total = quantity*300;
					totalBillAmount = total-(total*0.1);
				}
			} else if(gender.equals("Transgender")){
				if(type.equals("Small")){	
					total = quantity*100;
					totalBillAmount = total-(total*0.15);
				} else if(type.equals("Medium")){
					total = quantity*200;
					totalBillAmount = total-(total*0.15);
				} else if(type.equals("Large")){
					total = quantity*300;
					totalBillAmount = total-(total*0.15);
				}
			}
			return totalBillAmount;	
		}
	
		
	%>
	<% totalBill = price();
	%>
	<%= "TotalBill = "+ totalBill %>
</body>
</html>