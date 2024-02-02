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
    box-sizing: border-box;
}
body{
    /* background-image: url("https://cdn.pixabay.com/photo/2018/01/19/08/57/background-3091988_640.jpg"); */
    background-repeat: no-repeat;
    /* background-color: rgb(237, 122, 122); */
    background-size: cover;
    background-image: url("https://wallpapers.com/images/high/food-4k-jx0j7rqea6yv9phh.webp");

}
#div1{
    /* border: 1px solid; */
    height: 85vh;
    width: 60%;
   position: absolute;
   top: 5%;
   left: 25%;
   /* box-shadow: 6px 6px 6px; */
}
/* #div1 img{
    width: 100%;
    height: inherit;
    background-position: center;
    background-size: cover;

} */
section{
    border: 1px solid;
    width: 45%;
    height: 500px;
    position: absolute;
    top: 15px;
    box-shadow: 10 30 60 black;
    
    /* margin-right: -10px; */
    /* margin-right: 150px; */
    margin-top: 45px;
    left: 55%;
    border-radius: 5%;
    
    background-color:#2F4F4F;
}
section h1{
   text-align: center;
   padding-top: 50px;
   font-size: 35px;
   font-weight: bolder;
   /* color: darkblue; */
   font-style: italic;
}
form{
    padding-top: 50px;
    padding-left: 70px;
}
label{
    color: purple;
    font-size: 17px;
    font-weight: 600;
 }
 input{
    height: 35px;
    width: 200px;
    border: 1px solid gray;
    /* box-shadow: 1px 1px 1px gray; */
    border-radius: 2%;
} 
button{
    height: 40px;
    width: 130px;
    position: absolute;
    left: 180px;
    
    font-size: 16px;
    /* color: black; */
    
    background-color: rgb(20, 20, 21);
    border-radius: 5%;
    /* margin-left: -100px; */
    
    border-radius: 10px;

    /* text-decoration-color: black; */

    
}
/* section p{
    padding-left: 90px;
    font-weight: 900;
    font-size: 16px;

} */
/* section p a{

   text-decoration-style:none;
} */
#home{
    margin-left: -50px;
    margin-top: 50px;
}
 #sign{
    margin-left: -50px;
    margin-top: 150px;
}
a{
    text-decoration: none;
    font-size: x-large;
    font-style: italic;
    color: aliceblue;
    font-weight: 100px;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    
}
</style>
</head>

<body>
   <div id="div1">

    <section>
        <caption></caption>
        <form action="">
            <%String str=(String)request.getAttribute("msg"); %>
            <h1><%=str %></h1>
            <div>
             <button id="home"><a href="home.jsp">Home</a></button>
             <button id="sign"><a href="login.jsp">Sign Out</a></button>
             
            </div>
          
        </form>
    </section>
   </div>
</body>
</html>