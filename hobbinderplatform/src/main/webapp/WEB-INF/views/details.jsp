<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Hobbinder User Details</h3>
		<table>
			<tr>
				<td>First Name:</td>
				<td>${user.firstname}</td>	
			</tr>	
			<tr>
				<td>Last Name:</td>
				<td>${lastname}</td>	
			</tr>	
			<tr>
				<td>User Name:</td>
				<td>${username}</td>	
			</tr>		
			<tr>
				<td>Gender:</td>
				<td>${gender}</td>	
			</tr>
			<tr>
				<td>Email:</td>
				<td>${email}</td>	
			</tr>
			<tr>
				<td>Password:</td>
				<td>${password}</td>	
			</tr>
		</table>
</body>
</html>