<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Count Rows JSP</title>
</head>
<body>
 
<%@page import="com.app.dao.userDao"%>  
<jsp:useBean id="u" class="com.app.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  

out.println(u.getEmail());


boolean s=userDao.forgetpassword(u);  
out.println(u.getEmail());

out.println(s);


if(s==true){  
		response.sendRedirect("NewForgetPass.jsp");  
		}else{  
		response.sendRedirect("addUserError.jsp");  
		} 
%>
</body>
</html>