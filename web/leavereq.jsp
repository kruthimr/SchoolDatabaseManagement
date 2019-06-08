<%-- 
    Document   : leavereq.jsp
    Created on : Nov 12, 2017, 4:54:24 PM
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
    top: 70px;
    text-align: center;
  }
  
  input[type=text]{
      width: 35%;
      padding: 4px 15px;
      margin: 5px 0;
      display: inline-block;
      border: 3px solid gray;
      box-sizing: border-box;
      padding: 10px 10px;
      
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
    <form method="post" action="feedback.jsp"  onsubmit="validate()">
        
  <div class="formD">
      <h4><font color="#2f4f4f"> <b>Notify your teacher:</b></font></h4><br>
    <input id="inpid" type="text" placeholder="Enter Student Name" name="name" required>
    <br><br>
    <input id="inpid" type="text" placeholder="Enter USN" name="usn" required>
    <br><br>
    <input id="inpid" type="text" placeholder="Basic Drawing/Painting Basics/Intermediate Painting/Words and Pictures" name="course" required>
    <br><br>
    <input id="inpid" type="text" placeholder="Feedback/Leave/Queries/Others" name="type" required>
    <br><br>
  
    <textarea rows="4" cols="66" style="border:solid 3px gray;"id="inpidt" placeholder="Reason" name="reason" required></textarea>
    <br>
    <br>

  
   <button id="submit" type="submit" value="submit">Submit</button>
  </div>
  </form>
</div>

<footer class="container-fluid text-center">
</footer>

      
     
      <script>
function validate() {
    alert("Submitted");
}
</script>
      
</body>
</html>









