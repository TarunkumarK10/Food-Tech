<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<style>

*{
margin:0%;
padding:0%;
box-sizing:border-box;
}
main div:first-child,section{
box-shadow:5px 5px 30px black;
border-radius:20px;
width: 500px;
height: 500px;
}
section{
padding: 50px;
background-color: white;
}
main{

background-image: url("https://th.bing.com/th/id/OIP.21HAWGFM1TJhxFlB-7l0zgHaEo?rs=1&pid=ImgDetMain");
background-size:cover;
height:800px;
 display: flex;
 justify-content: center;
 align-items:center;
}
img{
margin:20px;
margin-left:40px;
width:400px;
border-radius: 50%;
}

form{
padding: 30px;
}

h1,h3{
text-align: center;
font-size: xx-large;
}
td{
padding: 10px;

}
input{
width:200px;
padding:10px;
text-align: center;
}

 section button {
	margin-left: 150px;
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

a {
margin-top:10px;
	margin-left: 80px;
	text-decoration: none;
	list-style: none;

}


input{
    margin-top: 5px;
    padding: 5px;
    border-radius: 5px;
    text-align: center;
    font-family: serif;
    font-style: italic;
    font-size: medium;
    font-weight: bolder;
}

main div:first-child{
background: url("https://images.pexels.com/photos/281260/pexels-photo-281260.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");}

main div:first-child h1{

color:white;
width:400px;
margin-left:40px;
text-align:center;
box-shadow:5px 5px 30px black;

}
main div:first-child button a{
margin: 50px;
padding: 0%;
 width: 100px;
	height: 40px;
	text-decoration: none;
	list-style: none;
	border-radius: 10px;
	font-weight: 100px;
	color: white;
}
main div:first-child button{
background-color: brown;
border-radius: 10px;
margin:20px;
margin-left: 150px;
box-shadow:5px 5px 30px white;

}
label,a{
    
    font-family: serif;
    font-size: x-large;
    
    
}


</style>
<body>

	<main>
		<div>
		<img alt="" src="https://st4.depositphotos.com/5040187/19758/v/450/depositphotos_197589224-stock-illustration-logo-swoosh-global-red-letter.jpg">
			 <h1>Welcome to Food Tech</h1>
			 <button id="home"><a href="home.jsp">Home</a></button>
		</div>
		<section>
			<%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
			%>
			<h1><%=msg%></h1>
			<%
			}
			%>
			<form action="login" method="post">

				<h1 style="color: blue;"></h1>

				<h3 id="login">LOGIN</h3>
				<div id="hm">
					
					<table>

						<tr>
							<td><label for="n">Email:</label></td>
							<td><input type="text" name="email" id="n"
								placeholder="Enter your Email"></td>
						</tr>
						<tr>
							<td><label for="m">Password:</label></td>
							<td><input type="text" name="pwd" id="m"
								placeholder="Enter your Password"></td>
						</tr>
					</table>
				</div>

				<br> 
				<button id="b1">Submit</button><br>
					<br> 
						<br> 
				
				<a href="register.jsp">Create A New User</a>

			</form>

		</section>
	</main>

</body>
</html>