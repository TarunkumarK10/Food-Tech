<%@page import="Food_Tech.Dto.User"%>
<%@page import="Food_Tech.Controller.Cart"%>
<%@page import="Food_Tech.Dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="Food_Tech.Dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

*{
    padding: 0%;
    margin: 0%;
}
body{
    /* background-color: aquamarine; */
    background-image: url("https://png.pngtree.com/thumb_back/fh260/background/20230704/pngtree-online-payment-cashback-credit-card-render-get-money-refunds-on-your-image_3719027.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
h1{
    font-size: 30px;
    margin-left: 400px;
    font-style: italic;
    font-family: serif;
    font-weight: italic;
    color: azure;
}
body form input+input{
    border-radius: 10px;
    margin-top: 50px;
    margin-left: 450px;
    height: 40px;
    width: 100px;
    font-family: sans-serif;
    font-style: italic;
    font-size: 20px;
    background-color: green;
    color: white;
    font-weight: bolder;
}


</style>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<% 
List<Item> items=(List<Item>)request.getAttribute("list");
int user=(int)request.getAttribute("id");
%>

<%for(Item i:items){ %>
 <li><%=i.getName()%></li>
 
<%} %>

<h1> The Total Amount Is :<%=Cart.totalPrice( items) %></h1>

<form action="finesh" method="post">
  <input type="text" name="value"  style="visibility: hidden;" value="<%=user%>">
  <input type="submit" value="Proceed">
</form>

</body>
</html>