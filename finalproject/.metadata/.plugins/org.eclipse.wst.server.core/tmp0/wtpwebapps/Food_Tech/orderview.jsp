<%@page import="Food_Tech.Dto.User"%>
<%@page import="Food_Tech.Dto.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
*{
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
}
nav{
    /* border: 1px solid; */
    padding: 30px;
    text-align: right;
}
body{
    position: absolute;
    text-shadow: 3px 3px 20px greenyellow;
    color: white;
    background-image: url("");
    background-size: cover;
    background-image: url('https://media.istockphoto.com/photos/food-background-on-dark-slate-picture-id480832827?k=6&m=480832827&s=612x612&w=0&h=AiQFadF1luFNikuejZaUuxLb1T8K76cHQHyf4mWPr9Y=');
    background-attachment: fixed;
}
 table{
 
    background-color: black;
    border-radius: 30px;
    font-size: larger;
    font-family: 'Times New Roman', Times, serif;
    box-shadow: 5px 5px 20px white;
 }
 td{
    padding: 20px;
 }
 th{
   
    padding: 20px;
 }
 
nav div h1:first-child{
   text-align: center;
}
section{
margin-left:600px;
    display: flex;
    justify-content:right;
    margin-right: 50px;
}
button{ 
     margin-left: 20px;
    box-shadow: 2px 3px 10px white; 
    margin-top: 10px;
    padding: 5px;
    border: none;
    background-color: slategrey;
    border-radius: 10px;
    text-align: center;
}
a{
    font-family: serif;
    text-decoration: none;
    text-align: center;
    color: white;
    padding: 20px;
    
}


</style>

<body>

<%List<Item> list =(List<Item>)request.getAttribute("list");
User user =(User)request.getAttribute("user");
%>
<nav>
  <div>
    <h1>Welcome</h1>
    <h1><%=user.getName() %></h1>
      <button><a href="cart?id=<%=user.getId()%>">Cart</a></button>
    </div>
    <div>
     <button><a href="home.jsp">Home</a></button>
     <button><a href="login.jsp">sign Out</a></button>
    </div>
</nav>
<section>

  <table >
  <tr>
        <th>Item Name</th>
        <th>item Price</th>
        

      </tr>
    <% for(Item item:list){%> 
      
       <tr>
        <td> <%=item.getName() %></td>
        <td> <%=item.getPrice() %></td>
        
         <td> <button><a href="orderId?id=<%=item.getId()%>&&userid=<%=user.getId()%>">ADD</a></button></td>
        
       </tr>
    
    <%} %>
    
    </table>
</section>



</body>
</html>