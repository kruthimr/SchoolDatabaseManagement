<%-- 
    Document   : stregistar
    Created on : Nov 9, 2017, 11:58:25 PM
    Author     : Kruthi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>SCHOOL OF ART AND DESIGN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      position: relative;
  }
  .navbar{
  background-color:#2F4F4F;
  color:white;
  position: fixed;
    top: 0px;
  }


#lab{
   font-size: 15px;
}

  div.formD{
    position: relative;
    top: 100px;
    text-align: center;
  }

  input[type=text], input[type=password], input[type=phone], input[type=email], input[type=date]{
      width: 25%;
      padding: 4px 10px;
      margin: 5px 0;
      display: inline-block;
      border: 2px solid gray;
      box-sizing: border-box;
      padding: 10px 10px;
      border-radius: 25px;
      text-align: center;
  }

#submit{
  width: 15%;
  padding: 5px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid gray;
  box-sizing: border-box;
  padding: 10px 10px;
  border-radius: 25px;
}

#submit:hover{
  background: black;
color: white;
text-decoration: none;
}
  footer {
        background-color: #2F4F4F;
        color: white;
        padding: 22px;
        position:fixed;
        bottom:0;left:0;
        right:0;
      }
    </style>
  </head>
  <body data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
      <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">EMERALD SCHOOL OF ART</a>
         <a class="navbar-brand"> </a>
        <a class="navbar-brand" href="SHome.jsp">GO BACK</a>
      </div>
</div>
</nav>

<div class="relative">
    <form method="post" action="stregistar1.jsp">
        
  <div class="formD">
      <h4><font color="#2f4f4f"> <b>Student Registration:</b></font></h4>
    <input id="inpid" type="text" placeholder="Enter Student Name" name="sname" required>
    <br>
    <input id="inpid" type="password" placeholder="Enter Password" name="spw" required>
    <br>
    <input id="inpid" type="text" placeholder="Enter USN" name="susn" required>
    <br>
    <input id="inpid" type="Phone" placeholder="Enter mobile number" name="sphone" required>
    <br>
   <input id="inpid" type="email" placeholder="Enter email" name="smail" required>
   <br>
   <input type="date" name="DOB" ><br><br>
   <label>Select Course:
   <input type="radio" name="course" value="Basic Drawing" required>Basic Drawing
   <input type="radio" name="course" value="Painting Basics" required>Painting Basics
   <input type="radio" name="course" value="Intermediate Painting" required>Intermediate Painting
   <input type="radio" name="course" value="Words and Pictures" required>Words and Pictures <br>
   

   <br>

   
   <button id="submit" type="submit" value="submit">Sign Up</button>
  </div>
  </form>
</div>

<footer class="container-fluid text-center">
</footer>

</body>
</html>
