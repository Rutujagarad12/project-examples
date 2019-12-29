<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
</style>
<body>
<%@page import="com.app.dao.userDao,com.app.bean.Book,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
  <jsp:useBean id="b" class="com.app.bean.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="b"/> 
<form action="receipt.jsp">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BookStore</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Home.html">Home</a></li>
      <li><a href="">Registraion</a></li>
      <li><a href="ProductDetails.jsp">Product Details</a></li>
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</nav>
<br><br>
<div class="container">
  <div class="row">
   
  <div class="col-sm-6">
  <div class=" card" style="width:400px">
    <img class="card-img-top" src="images/c1.jpg" alt="Card image" style="width:50% ">
    <div class="card-body">
      <h4 class="card-title">C</h4>
      <p class="card-text">Yeshwant Kanetkar</p>
      <p class="card-text">Rs. 200</p>
    <p><input type="checkbox" name="checkbox" value="1" /></p> 	
    </div>
  </div>
  </div>
  
   <div class="col-sm-6">
  <div class=" card" style="width:400px">
    <img class="card-img-top" src="images/a1.jpg" alt="Card image" style="width:50% ">&emsp;
    <div class="card-body">
      <h4 class="card-title">Thinking In Java</h4>
      <p class="card-text">Thinking In Java</p>
      <p class="card-text">Rs.390</p>
  <p><input type="checkbox" name="checkbox" value="2" /></p>
    </div>
  </div>
  </div>
  &emsp;
  
  <div class="row"> 
   <div class="col-sm-6">
  <div class=" card" style="width:400px">
    <img class="card-img-top" src="images/a2.jpg" alt="Card image" style="width:50% ">
    <div class="card-body">
      <h4 class="card-title">Computer Networking</h4>
      <p class="card-text">James F.Korose</p>
      <p class="card-text">Rs.290</p>
    <p><input type="checkbox" name="checkbox" value="3" /></p>
    </div>
  </div>
  </div>
  &emsp;
   <div class="col-sm-6">
  <div class=" card" style="width:400px">
    <img class="card-img-top" src="images/a3.jpg" alt="Card image" style="width:50% ">
    <div class="card-body">
      <h4 class="card-title">Head First C#</h4>
      <p class="card-text">Andrew Stellimen</p>
      <p class="card-text">Rs.400</p>
   <p><input type="checkbox" name="checkbox" value="41" /></p>	
    </div>
  </div>
  </div>
  </div>
  
   <div class="row">
   <div class="col-sm-6">
  <div class=" card" style="width:400px">
    <img class="card-img-top" src="images/s1.jpg" alt="Card image" style="width:50% ">
    <div class="card-body">
      <h4 class="card-title">What Is HTML5?</h4>
      <p class="card-text">Brett Melaughlin</p>
      <p class="card-text">Rs.300</p>
   <p><input type="checkbox" name="checkbox" value="5" /></p> 	
    </div>
  </div>
  </div>
  
   <div class="col-sm-6">
  <div class=" card" style="width:400px">
    <img class="card-img-top" src="images/h5.jpg" alt="Card image" style="width:50% ">
    <div class="card-body">
      <h4 class="card-title">HTML5 In Action</h4>
      <p class="card-text">Joe Lennon</p>
      <p class="card-text">Rs.590</p>
   <p><input type="checkbox" name="checkbox" value="6" /></p> 	
    </div>
  </div>
  </div>
  </div>
   <div class="row">
   <div class="col-sm-6">
  <div class=" card" style="width:400px">
    <img class="card-img-top" src="images/c7.jpg" alt="Card image" style="width:50% ">
    <div class="card-body">
      <h4 class="card-title">Object Oriented Programming Using C++</h4>
      <p class="card-text">Balagurusamy</p>
      <p class="card-text">Rs.300</p>
   <p><input type="checkbox" name="checkbox" value="7" /></p> 	
    </div>
  </div>
  </div>
  
   <div class="col-sm-6">
  <div class=" card" style="width:400px">
    <img class="card-img-top" src="images/c8.jpg" alt="Card image" style="width:50% ">
    <div class="card-body">
      <h4 class="card-title">C++:The Complete Reference</h4>
      <p class="card-text">Herbert Schildt</p>
      <p class="card-text">Rs.590</p>
 <p><input type="checkbox" name="checkbox" value="8" /></p> 	
    </div>
  </div>
  </div>
  </div>
   <div class="row">
   <div class="col-sm-6">
  <div class=" card" style="width:400px">
    <img class="card-img-top" src="images/c9.jpg" alt="Card image" style="width:50% ">
    <div class="card-body">
      <h4 class="card-title">Head First SQL</h4>
      <p class="card-text">Lynn Beighley</p>
      <p class="card-text">Rs.650</p>
    <p><input type="checkbox" name="checkbox" value="9" /></p>
    </div>
  </div>
  </div>
 <div class="col-sm-6">
  <div class="card" style="width:400px">
    <img class="card-img-top" src="images/c10.jpg" alt="Card image" style="width:50% ">
    <div class="card-body">
      <h4 class="card-title">SQL The Complete Reference</h4>
      <p class="card-text">James Groff</p>
      <p class="card-text">Rs. 667</p>
		<p><input type="checkbox" name="checkbox" value="10" /></p>	
    </div>
  </div>
  </div>
  </div>
</div>
<p>
		
       <input type="submit" value="Add To Cart">
       </p>
       </div>
       </form>
      
      <%

String select[] = request.getParameterValues("checkbox"); 
if (select != null && select.length != 0) {
out.println("You have selected: ");
for (int i = 0; i < select.length; i++) {
out.println(select[i]); 
}
}
%>
</body>
</html>