<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.app.dao.userDao,com.app.bean.Book"%>   
<jsp:useBean id="b" class="com.app.bean.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="b"/>  
  
<%  
String id=request.getParameter("id"); 
int id1=Integer.parseInt(id);
session.setAttribute("id1", id1);
Book book=userDao.getRecordById(Integer.parseInt(id));

double p1=book.getPrice();
session.setAttribute("price",p1);
String bname=book.getBook_name();
session.setAttribute("name",bname);


%>
 <form action="receipt.jsp"> 
<table border="1" width="100%">
<tr><th>Id</th><th>Book Name</th><th>Price</th><th>Quantity</th><th>Book</th></tr>
<tr><td><%=book.getBook_id() %></td>
<td><%= book.getBook_name() %> </td>
<td><%= book.getPrice() %></td>

<td><input type="number" name="quant"></td>
<td><input type="submit" value="Quantity"></td>

</tr>

</table>
</form>
</body>
</html>