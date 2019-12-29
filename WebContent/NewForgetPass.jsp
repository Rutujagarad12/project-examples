<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
function validatepass()
{
	errmsg="";
	var str = document.getElementById("txtpass").value;
	if((str.match(/[a-z]/g) && str.match( /[A-Z]/g) && str.match(/[0-9]/g) && str.match(
	/[^a-zA-Z\d]/g) && str.length >= 8))
	{
		document.getElementById("errp").innerHTML = errmsg;
		return true;
	}
	else
	{
		
		errmsg = "Enter valid Password";
		document.getElementById("errp").innerHTML = errmsg;
		return false;
	}
	
}
function matchpass()
{
	errmsg="";
	var str = document.getElementById("txtpass").value;
	var str1 = document.getElementById("txtrpass").value;
	if(str1.match(str))
	{
		document.getElementById("err").innerHTML = errmsg;
		return true;
	}
	else
	{
		
		errmsg = "Password not match";
		document.getElementById("err").innerHTML = errmsg;
		return false;
	}
	
}
</script>
<form action="Resetdb.jsp"  method="post" >




<table border="3"  width="25%" cellspacing="10">
<tr>
	<td>Email:</div><td><input type="email" name="email" id="txtemail" onblur="email()" placeholder="Enter EmailID" required></div>
	<div id="errm" class="err"></div>
	</tr>

<tr>
	<td>Password:</div><td><input type="password" name="password" id="txtpass" onblur="validatepass()" placeholder="Enter Password"></div>
	<div id="errp" class="err"></div>
	</tr>
	
    
</tr>
	<tr>
	<td>Confirm Password:</div><td><input type="password" name="password1" id="txtrpass" onblur="matchpass()" placeholder="Re-Enter Password" ></div>
	<div id="err" class="err"></div>
	</tr>

<tr> 
<td align="right"> 
<input type="submit" value="submit"/>
</td>
	</table><br></br>

</form>
</body>
</html>