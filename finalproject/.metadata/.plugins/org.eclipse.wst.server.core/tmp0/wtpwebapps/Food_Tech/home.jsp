
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome Food Tech</title>
<style>
*{
    margin: 0%;
    padding: 0%;
}
body{
    /* background-image: url("https://media.istockphoto.com/id/184103864/photo/clouds-on-sky.jpg?s=612x612&w=0&k=20&c=3JGI13B8xwZIObLtl8IN1VFtPErHv2pKiWV0tTuemsI="); */
    background-repeat: no-repeat;
    background-attachment:fixed;
    background-size: cover;
    padding: 40px;
    
}
body div{
    /* border: 2px solid red; */
    height: 500px;
    width: 800px;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
    left:100px;
    top: 100px;
}
 #d3{
  border-radius:20px;
 box-shadow: 5px 5px 20px black;
    background-image: url("https://media.istockphoto.com/id/996182206/photo/assorted-indian-food-for-lunch-or-dinner-rice-lentils-paneer-dal-makhani-naan-chutney-spices.jpg?s=612x612&w=0&k=20&c=I6Nlb95_dMC9tpl6FsbjLQBT23LjyS3CmBBLQe5yLRM=");
    position: absolute;
    background-size: inherit;
    width: 95%;
    height: 600px;
    background-repeat: no-repeat;
    left: 30px;
    top: 90px;
}

 img{
 width:500px;
 height:500px;
 box-shadow: 5px 5px 20px black;
  border-radius: 100%;
 }
#d1{

 background-color:Ivory;
 border-radius:100%;
 box-shadow:5px 5px 30px black;
    position: absolute;
    width: 480px;
    color: bisque;
     /* background-image: url("https://media.istockphoto.com/id/953140058/photo/cooking-nd-seasoning-spices-border-on-black-slate-background.jpg?s=612x612&w=0&k=20&c=O6qm_B41xGdtAjzoqvA4pyHGqg8p7ZOgwnPZMMKzPU4=");  */
     background-repeat: no-repeat;
     background-size: cover;
    }

  #d2{
    position: absolute;
    width: 500px;
    left: 660px;
    bottom: 30px;
    width: 500px;
    /* background-image: url("https://media.istockphoto.com/id/1297483389/photo/masala-tea-chai.jpg?s=612x612&w=0&k=20&c=Pv-QROSSywNh_qzHIIjHJeJB7OT0ujrKQsSiTgOmJAs=");  */
  } 
  #w1{
    margin-left:500px;
    position: absolute;
    bottom: 280px;
    word-spacing: 5px;
     font-size: 50px;
    font-style: italic;
   text-shadow:5px 5px 5px white;
color:black;
    text-indent: initial;
  }

  #w2{
  margin-left:400px;
    position: absolute;
    bottom: 230px;
    word-spacing: 5px;
    font-size: 40px;
    font-style: italic;
    text-shadow:3px 3px 10px white;
color:black;
    
  }
  #a1{
    position: absolute;
    left: 100px;
    height: 40px;
    width: 100px;
    font-weight: 550;
    font-size: 20px;
    border-radius: 8px;
    background-color:coral;
    box-shadow: 15px 8px 6px rgb(24, 1, 1);
  }
  #a2{
    position: absolute;
    right: 80px;
    height: 40px;
    width: 200px;
    font-size: 20px;
    font-weight: 550;
    border-radius: 8px;
    background-color: coral;
    box-shadow: 15px 8px 6px rgb(24, 1, 1);
  }
  a{
    text-decoration: none;
    color: black;
   text-shadow: 4px 4px 10px white;
    font-style: italic;
  }
   button{
    z-index: 10;
   }

</style>
</head>
<body>



<div id="d3">

    <div id="d1">
        
        <img alt="" src="https://st4.depositphotos.com/5040187/19758/v/450/depositphotos_197589224-stock-illustration-logo-swoosh-global-red-letter.jpg">
        
    </div> 
    
    <br>
    <div id="d2">
    
        <button id="a1"><a href="login.jsp">User</a></button>
        <button id="a2"><a href="managerLogin.jsp">HOTEL MANAGER</a></button>
    </div>
</div>
<div>
    <h1 id="w1">WELCOME  TO </h1>
        <h1  id="w2">FOOD TECH</h1>
    </div> 

</body>
</html>