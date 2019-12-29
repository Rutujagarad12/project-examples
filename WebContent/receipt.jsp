    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.app.dao.userDao,com.app.bean.Book,java.util.*"%>  
<jsp:useBean id="b" class="com.app.bean.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="b"/> 


<%  
 int id1=(Integer)session.getAttribute("Book_id");
String quantity = request.getParameter("quant");
int q=Integer.parseInt(quantity);

double p=(Double)session.getAttribute("price");
double total=q*p;

%> 
<form action="index.html">
<h5>Your Book is Booked.....You Have To Pay RS</h5>
<%out.print(total); %>
<br>
<a href="loginsuccess.jsp">Book list</a>
<input type="submit" value="Logout">
</form>


  
</body>
</html>
    
