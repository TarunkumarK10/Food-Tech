<%@page import="Food_Tech.Dto.HotelManager"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="Food_Tech.Dto.Item"%>
<%@page import="java.util.List"%>
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
    top: 60px;
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
	<%Item s=(Item)request.getAttribute("id");
	%>

 	<form action="save" method="post" id="f1">
 	 <input type="text"  style="visibility: hidden;" readonly="true"  name="managerId" value="<%=s.getManager().getId()%>">
 	  <input type="text"  readonly="true" name="id" value="<%=s.getId()%>">
 	  <input type="text" name="name" value="<%=s.getName()%>">
 	  <input type="text" name="quant" value="<%=s.getQuantity()%>">
 	  <input type="text" name="price" value="<%=s.getPrice()%>">
 	  
 	 <input type="submit" value="UPDATE" id="but">
 	</form>



</body>
</html>