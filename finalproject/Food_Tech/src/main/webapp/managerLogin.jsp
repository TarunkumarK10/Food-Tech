<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Login</title>

</head>
<style>
body{
    background-color: antiquewhite;
    background-image: url("https://media.istockphoto.com/id/1129661826/photo/wood-texture-table-top-with-blur-light-gold-bokeh-in-cafe-restaurant-background-for-montage.jpg?s=612x612&w=0&k=20&c=9k3Tz9a-5M-g9Xsqr4NyIfqVnhr-JXgOIpaRfzN30us=");
    background-repeat: no-repeat;
    background-size: cover;
}
div{
    /* border: 2px solid; */
    margin-left: 33%;
    
}
label{
    font-size: xx-large;
    font-weight: bold;
     text-shadow: 3px 3px 5px white;
    text-shadow: 8px,6px,3px;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;


}
input{
    border-radius: 10px;
    border-color: beige;
    text-align:center;
    font-size: medium;
    /* font-style: normal; */
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    height: 30px;
    width: 250px;
    margin-left: 15px;
    box-shadow: 4px 4px 5px black;
}

#d1{
    margin-left: 200px;
    top: 10px;
}
#d1 button{
    /* color: red; */
    margin-top: -90px;
    border: 10px;
    background-color: rgb(225, 18, 18);
    height: 40px;
    width: 100px;
    border-radius: 10px;
    box-shadow: 3px 3px 5px black;
    font-weight: bold;
    font-size: x-large;
}
#d1 a{
    text-shadow: 4px 4px 5px rgb(102, 190, 90);
    font-weight: bold;
    font-size: x-large;
    /* margin-right: 100px; */
    margin-left: -100px;
    text-decoration: none;
    font-family: 'Times New Roman', Times, serif;
    color:white;
}
h1{
    color: aliceblue;
    text-align: center;
    margin-top: 100px;
    text-shadow: 3px 3px 5px blue;
}
td{
    padding-top: 20px;
}
#home{
   position:fixed;
   top: 2%;
    height: 40px;
    width: 100px;
    box-shadow: 3px 3px 5px black;
    font-weight: bolder;
    font-size: x-large;
   border-radius: 10px;
   background-color: rgb(225, 18, 18);
}
#home a{
    
    color:black;
    text-decoration: none;
    
}


</style>


<body>
<% String msg=(String)request.getAttribute("msg");
if(msg!=null){
%>
<h1 style="color:white;"><%=msg%></h1>

<%} %>

<button id="home"><a href="home.jsp">Home</a></button>
<form action="managerlogin" method="post">
<h1>LOGIN MANAGER</h1>
      <div>
        <table>
            <tr>
                <td><label for="n">Email:</label></td>
                <td><input type="text" name="email" id="n" placeholder="Enter your Email"></td> 
            </tr>
            <tr> 
                <td><label for="m">Password:</label></td>
                <td><input type="text" name="pwd" id="m" placeholder="Enter your Password"></td> 
            </tr>
        </table> <br>
        <div id="d1">
            <button id="b1">Submit</button> <br> <br>
             <a href="manager.jsp">Create A New User..?</a>
        </div>
        </div>
</form>


</body>
</html>