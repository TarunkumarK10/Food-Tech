<%@page import="java.beans.Visibility"%>
<%@page import="Food_Tech.Controller.Cart"%>
<%@page import="Food_Tech.Dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="Food_Tech.Dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style >
*{
    padding: 0%;
    margin: 0%;
}
body{
    background-image: url("https://thumbs.dreamstime.com/z/food-supplies-period-quarantine-blue-background-set-grocery-items-canned-food-vegetables-pasta-food-supplies-181959811.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
div{
    margin-left: 550px;
    font-size: 20px;
}
form{
    margin-left: 500px;
    margin-top: 20px;
}
table tr th{
    font-size:4vh;
    color: black;
    font-family: sans-serif;
    font-style: italic;
}
table tr+tr td input{
    height: 40px;
    border-radius: 10px;
}
 form table+input{
    height: 40px;
    margin-left: 315px;
    position: absolute;
    margin-top: -42px;
    border-radius: 10px;
}
form table+input+input{
    box-shadow: 5px 5px 7px black;
    margin-left: 190px;
    margin-top: 20px;
    height: 30px;
    width: 100px;
    border-radius: 10px;
    font-size: 20PX;
    font-style: italic;
    font-family: monospace;
}
h3{
 margin-top: 80px;
 margin-left: 50px;
}

table{
margin-left:200px;
 margin-top: 50px;
}

 input {
 font-size: xx-large;
  
    font-family: serif;
  border: none;
	background-color: transparent;
	
}
</style>
</head>

<body>
	<%
	User user = (User) request.getAttribute("user");
	List<Item> list = (List<Item>) request.getAttribute("list");
	
	
	%>
	 <div>
	 <h3><%=user.getName() %></h3>
	  <h3>Your Items List</h3>
	 </div>
	<form action="proceed" method="post">
   <table>
	
		<%
		for (Item items : list) {
		
			
		%>
		<tr>
			<td>  <input type="text"  name="itemName" readonly="true" value="<%=items.getName()%>"></td>
			<td>  <input type="text"  name="itemPrice"  readonly="true" value="<%=items.getPrice()%>"></td>
		</tr> 

		<%
		}
		%>
	</table>
	
	<input style="visibility: hidden;" type="text" name="user" value="<%=user.getId()%>">
	<input type="submit" value="Proceed">
	</form>

</body>
</html>