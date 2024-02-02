<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration for User</title>
<style>
*{
    padding: 0%;
    margin: 0%;
    box-sizing: border-box;
}
body{
    overflow-x: hidden;
    display: flex;
    align-items: center;
    justify-content: space-around;
    background-image: url(https://e1.pxfuel.com/desktop-wallpaper/437/372/desktop-wallpaper-2-color-double-colour.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    width: 100%;
}
 body div{
 border-radius: 10px;
    height: 500px;
    width: 900px;
    display: flex;
    align-items: center;
    justify-content: center;
    
}
.poster{
    background-color: beige;
    height: 100%;
    width: 100%;
    background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_DJYMwXTvEMG5amdmuAa10vQwP90FyfOIrw&usqp=CAU);
    background-repeat: no-repeat;
    background-size: cover;
    
}

h2,i{
    font-size: 10vh;
    color: lightblue;
    font-family: Arial, Helvetica, sans-serif;
    font-style: italic;
}
#d1{
    margin-top: 140px;
   
}
#dd{
    background-color: lightslategray;
}
table{
 
    margin-top: 50px;
    margin-bottom: 30px;
}
nav{
    margin-top: -0px;
    text-align: center;
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
input[type=text]{
 margin-top: 15px;
width: 300px;
}
input[type=radio]{
  padding:50px;
  width: 30px;
  
}
input[type='radio']:checked{
  background-color: green;
  
}

label{
    font-size: x-large;
    padding: 20px;
    padding-top: 0px;
}
button{
background-color:maroon;
color:white;
    margin-left: 50px;
    margin-top: px;
    height: 30x;
    width: 120px;
    padding:10px;
    border-radius: 15px;
    font-size: large;
}
a{
 color:white;
 font-size: x-large;
 text-decoration: none;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <div id="d1">
     
        <div class="poster">
        
       
          <h2>USER: <br> <i class="fa-regular fa-user"><a href="home.jsp"> :  Home  </a></h2></i>
        
        </div>
        
        <div id="dd">
       
            <form action="register" method="post">

               <nav><h1>REGISTER</h1></nav> 
                <table>
                <tr>
                        <td><label class="lab" for="">Name </label></td>
                        <td><input type="text" name="name" id="" placeholder="Enter Your Name"></td>
                    </tr>
                    <tr>
                        <td><label class="lab" for="">Email </label></td>
                        <td><input type="text" name="email" id="" placeholder="Enter Your Email"></td>
                    </tr>
                    <tr>
                        <td><label class="lab" for="">Password </label></td>
                        <td><input type="text" name="pwd" id="" placeholder="Enter Your Password"></td>
                    </tr>
                    <tr>
                        <td><label class="lab" for="">Phone no </label></td>
                        <td><input type="text" name="phone" id="" placeholder="Enter Your Phone No"></td>
                    </tr>
                    <tr>
                        <td><label class="lab" for="">Address </label></td>
                        <td><input type="text" name="address" id="" placeholder="Enter Your Address"></td>
                    </tr>
                    <tr>
                        <td>
                        <label class="lab" for="">Gender </label></td>
                        <td>
                        Male<input type="radio" name="g" id="male" value="male"> 
                      Female<input type="radio" name="g" id="fmale" value="female">
                        </td>
                    </tr>
                </table>
                <button >Submit</button>
               
        
            </form>
             
        </div>
	 
     </div>
</body>
</html>