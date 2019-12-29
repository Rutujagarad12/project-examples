<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.app.dao.userDao"%>  
<jsp:useBean id="b" class="com.app.bean.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="b"/> 
<form>
<%@page import="com.app.dao.userDao,com.app.bean.Book"%>   
<%  
String id=request.getParameter("id"); 
Book book=userDao.getRecordById(Integer.parseInt(id));  
%> 
Book Name:<%=b.getBook_id() %>>
</form>
</body>
</html>