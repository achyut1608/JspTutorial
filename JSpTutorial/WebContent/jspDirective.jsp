<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%--
	    this is general scriptlet where we can do direct operation without creating a functions
	 --%>
<%
    String num = request.getParameter("txtName");
    int number = 0;
    if(num==null)
        number = 0;
    else{
        number = Integer.parseInt(num);
        out.println(number(number));
    }
%>

<%--this directive use for create a method and declare variable there should not be out.println inside directive it will give error at runtime --%>
<%!
    int data = 0;
    int number(int number){
        System.out.println(printFunction() +" number is : " + number);
        return number;
    }
    String printFunction(){
        return "Hello World";
    }

    <%--
     we cannot do this also
     int data = number(data);
        we can only declare the variable we can not perform outside the functions
    --%>

%>

<%--   this is only used for print data which is also called expression--%>
<%= "this is testing value of data : "+ data %>

    <form action="#" method="post">
	<table>
	    <tr>
	        <td>
	            <input type="text" name="txtName" placeholder="Enter number"/>
	        </td>

	    </tr>
	    <tr>
	        <td>
                <input type="submit" value="submit" />
            </td>
	    </tr>

	</table>
    </method>

</body>
</html>