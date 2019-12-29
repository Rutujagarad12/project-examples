<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



 



</head>
<center>



<body background="images/2.jpg" >

<form action="Admindb.jsp" method="post">  
<table width="60%">


<tr>
<th colspan="2"> order details </th>
</tr>





<tr>
<td>
Book name
</td>

<td>
<input type="text" name="book_name" placeholder = "Enter book name" autofiled> </>
</td>
</tr>




<tr>
<td>
Author name
</td>

<td>
<input type="text" name="author_name" placeholder = "Enter Author name"> </input>
</td>
</tr>

<tr>
<td>
Price
</td>

<td>
<input type="number" name="price" placeholder = "Enter Price"> </input>
</td>
</tr>



<tr>
<td>
upload image
</td>

<td>
  <input type="text" name="image"  ></input>
</td>
</tr>

<tr><td><input type="submit" value="Add"/></td></tr>  



</table>
</center>
</body>
</html>