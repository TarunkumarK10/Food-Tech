<%@page import="Food_Tech.Dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="Food_Tech.Dto.HotelManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
 body{
    position: absolute;
    background-image: url("https://cdn.pixabay.com/photo/2016/11/21/16/02/outdoor-dining-1846137_1280.jpg");
    background-repeat: no-repeat;
    width: 100%;
    background-size: cover;
}

form{
    position: absolute;
    top: 170px;
    left: 270px;
    font-style: italic;
}
form input{
 text-align:center;
 
 
 font-size:large;
    height: 40px;
    width: 130px;
    background-color: rgb(194, 192, 192);
    margin: 15px;
    left: 40px;
    border-radius: 8px;
    box-shadow: 13px 8px 8px black;
}

#but{
    position: absolute;
    top: 90px;
    left: 320px;
    height: 40px;
    width: 130px;
    font-weight: 600;
    font-size: 20px;
    background-color: orangered;
    border-radius: 8px;
    box-shadow: 13px 8px 8px black;
    font-style: italic;
}
</style>
</head>
<body>
	<%
	HotelManager manager = (HotelManager) request.getAttribute("manager");
	List<Item> list=(List<Item>)request.getAttribute("list");
	%>
	<form action="itemadd" method="post">
		<table>
			<tr>
				<td>
				<td><input style="visibility: hidden;" type="text" name="managerId"
					value="<%=manager.getId()%>" readonly="true"></td>
				<td><input type="text" name="name" placeholder="item Name">
				</td>
				<td><input type="text" name="quant"
					placeholder="item Quanatity"></td>
				<td><input type="text" name="price" placeholder="Item Price">
				</td>
				<td><button id="but">ADD</button></td>
				<td>
		</table>
	</form>
</body>
</html>