<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
<title>Insert title here</title>

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
</style>

</head>
<body>
<%@page import="com.app.dao.userDao,com.app.bean.Book,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Users List</h1>  
  
<%  
List<Book> list=userDao.getAllBooks(); 
request.setAttribute("list",list); 

%>    
<table border="0" width="100%">  
<tr><th>Id</th><th>Book Name</th><th>Author</th><th>Price</th><th>Add To Cart</th></tr>  


<c:forEach items="${list}" var="b1">  
<tr><td>${b1.getBook_id()}</td><td><img src=${b1.getImage()} /></<td>${b1.getBook_name()}</td><td>${b1.getAuthor_name()}</td>  
<td>${b1.getPrice()}</td><td><a href="addtocart.jsp?id=${b1.getBook_id()}">Add To Cart</a></td></tr>  
</c:forEach>  

</table>   

</body>
</html>
    
