<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	margin-left: 550px;
	margin-top: 300px;
	/* background-repeat: no-repeat;
    width: 100%;
    position: absolute; */
    color:white;
	background-image:
		url("https://cdn.pixabay.com/photo/2015/07/10/14/04/coffee-839233_1280.jpg");
}

input {
color: white;

	background: transparent;
	margin-top: 20px;
	position: relative;
	bottom: 20px;
	height: 20px;
	width: 200px;
	border-radius: 10px;
	/* margin-left: 100px; */
}

table {
	margin-left: 60px;
	margin-top: 50px;
}

label {
	position: relative;
	font-size: x-large;
	bottom: 10px;
	right: 40px;
	color: white;
}

button {
	position: relative;
	top: 30px;
	left: 150px;
	width: 100px;
	height: 40px;
	text-decoration: none;
	list-style: none;
	background: transparent;
	font-size: x-large;
	border-radius: 10px;
	font-weight: 100px;
	background-color: brown;
}

h1 {
	font-size: 40px;
	margin-top: -50px;
	font-style: italic;
	color: white;
}

#lan {
	margin-left: -110px;
}

a {
	text-decoration: none;
	list-style: none;
	color: white;
}

h3 {
	margin-top: -40px;
	margin-left: 30px;
	color: white;
}
</style>
</head>
<body>
<% String msg=(String)request.getAttribute("msg");
if(msg!=null){
%>
<h1 style="color:green;"><%=msg%></h1>

<%} %>
	<form action="managerregister" method="post">
		<h1>HOTEL MANAGER REGISTER</h1>
		<table>
			<tr>
				<td><label for="">Name :</label></td>
				<td><input type="text" name="name" id=""></td>
			</tr>
			<tr>
				<td><label for="">Email :</label></td>
				<td><input type="text" name="email" id=""></td>
			</tr>
			<tr>
				<td><label for="">Password :</label></td>
				<td><input type="text" name="pwd" id=""></td>
			</tr>
			<tr>
				<td><label for="">Phone no:</label></td>
				<td><input type="text" name="phone" id=""></td>
			</tr>
			<tr>
				<td><label for="">Address :</label></td>
				<td><input type="text" name="address" id=""></td>
			</tr>
			<tr>
				<td><label for="">Gender :</label></td>
				<td><input id="lan" type="radio" name="g" value="male">
					<h3>Male</h3></td>
				<td><input id="lan" type="radio" name="g" value="female">
					<h3>Female</h3></td>
			</tr>
			<tr>
				<td><label for="">Hotel name :</label></td>
				<td><input type="text" name="hotelname" id=""></td>
			</tr>

		</table>
		<button>Submit</button>
		
	</form>

</body>
</html>