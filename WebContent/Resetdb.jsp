<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.app.dao.userDao"%>  
<jsp:useBean id="u" class="com.app.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  


int i=userDao.update(u);  

out.print(u.getEmail());


if(i>0){  
response.sendRedirect("index.html");  
}else{  
response.sendRedirect("NewForgetPass.jsp"); 
}  
%>  
</body>
</html>