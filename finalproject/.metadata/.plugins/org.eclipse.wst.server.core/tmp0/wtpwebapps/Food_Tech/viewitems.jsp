<%@page import="Food_Tech.Dto.HotelManager"%>
<%@page import="Food_Tech.Dto.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Items</title>
<style >
*{
    padding: 0%;
    margin: 0%;
}
body{
    background-image: url("https://i.pinimg.com/originals/33/ef/8b/33ef8b9c0b902154a6cd4103a21275ef.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    height: 800px;
    background-attachment: fixed;
}
div{
    margin-top: 20px;
    margin-left: 400px;
    font-style: italic;
    font-weight: bolder;
    font-family: serif;
}
body div+div{
    margin-left: 500px;
}
body div+div button{
    height: 30px;
    width: 100px;
    margin-top: 20px;
    border-radius: 10px;
    font-size: large;
    font-style: italic;
    background-color: brown;
    color: white;
   
}
table{
margin:30px;
    margin-left: 720px;
}
table tr td+td+td button,a{
    height: 30px;
    width: 100px;
    border-radius: 10px;
    font-size: large;
    font-style: italic;
    background-color: brown;
    color: white;
}
td{
 font-family: serif;
 font-weight: bolder;
 font-size: x-large;
}
 th{
 font-family: serif;
 font-weight: bolder;
 font-size: x-large;
 }
td{
 padding: 10px;
}
h1{
text-shadow:2px 2px 20px blue;

}
a{
    text-decoration: none;
}
</style>
</head>

<body>
	<%
	HotelManager manager = (HotelManager) request.getAttribute("manager");
	List<Item>items=(List<Item>) request.getAttribute("list");	
	%>
	<div>
       <h1> Manager Name : <%=manager.getName() %></h1>
	  <h1>Hotel Name :<%=manager.getHName() %></h1>
    </div>
	<div>
	<button><a href="home	.jsp">Home</a></button>
	<button><a href="managerLogin.jsp">Sign Out</a></button>
	<button><a href="manager?Id=<%=manager.getId()%>">Add Items</a></button>
   </div>
   

	<table>
	    
		<%
			for (Item item : items) {
		%>
		
		<tr>
			<td><%=item.getName()%>       :</td>
			<td><%=item.getPrice()%></td>
			<td><button><a href="Update?id=<%=item.getId()%>">Update</a></button></td>
			<td><button><a href="Delete?id=<%=item.getId()%>">Delete</a></button></td>
		</tr>
		<%
		}
		%>
	</table>

</body>
</html>