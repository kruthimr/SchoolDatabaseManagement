<%-- 
    Document   : login
    Created on : Nov 10, 2017, 12:03:01 AM
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
  #back {padding-top:50px;height:500px;color: #fff; background-color: #e6e6fa;}

  div.relative{
    position: relative;
    left: 150px;
    top:70px;
  }

form {
    position: relative;
    top:40px;
    width: 420px;
    height:450px;
}

div.formD{
  position: relative;
  top: -30px;
  text-align: center;
}

input[type=text], input[type=password] {
    width: 50%;
    padding: 5px 10px;
    margin: 8px 0;
    display: inline-block;
    border: 2px solid gray;
    box-sizing: border-box;
    border-radius: 25px;
}

button {
     position: relative;
     top: -15px;
     left:-6px;
     border-radius: 25px;
    background-color:#F5F5F5;
    color: gray;
    padding: 5px 5px;
    cursor: pointer;
    border: 2px solid gray;
    width: 30%;
}
button:hover{background-color: black;
color: white;}

div.events{
  position: relative;
  left: 800px;
  top:-350px;
}

  .modal-header{
      padding: 2px 16px;
    background-color: #2F4F4F;
    color: white;
  }
  .modal-footer {
    padding: 10px 16px;
    background-color: #2F4F4F;
    color: white;
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
        <a class="navbar-brand" href="#">EMERALD SCHOOL OF ART</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
		<li><a href="SHome.jsp">Go Back</a></li>
            </ul>
      </div>
    </div>
  </div>
</nav>

<div class="relative">
  <form method="post" action="login1.jsp">
      
    <h4><font color="#2f4f4f"> <b>Student Login:</b></font></h4>
<div class="imgcontainer">
  <img src="users-pics_1x.png" alt="Avatar" class="avatar">
</div>

  <div class="formD">
    <input type="text" placeholder="Enter USN" name="susn" required>
    <br>
  <input type="password" placeholder="Enter Password" name="psw" required>
  <br><br>
  <button type="submit" value="Login">Login</button>
  <h5><a href="stregistar.jsp">Click here to register before login</a></h5>
  </div>
  </form>
</div>

 <!--Events-->
 <div class="events">
   <br>
  <h1 style="font-family:Jazz LET, fantasy; color:#2F4F4F;"><b>EVENTS:</b></h1>
  <br><br>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal1">2017 ESA Faculty Exhibition</button>
  <br><br><br>
  <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal2">Flux</button>
  <br><br><br>
  <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal3">Nessa Portman: They Try to Bury Us</button>
  <br><br><br>
  <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal4">Deck the Walls</button>
  <br><br><br>

  <!-- Modal 1 -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
          
        <div class="modal-header">
          <h4 class="modal-title">ESA Faculty Exhibition </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          
          
        <div class="modal-body">
            
            <p>October 14, 2017 to November 26, 2017</p>
            <br>
            <p><b>VENUE</b>: ESA Open corridors, 3rd Floor</p><br>
            <p>Faculty Exhibition Session-1.5 <p>

            <p>Opening Reception: October 19, 5:00 – 7:00pm</p>
          </div>
        
          <div class="modal-footer">

        </div>
          
      </div>
    </div>
  </div>
  <!-- Modal 2 -->
 <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
          
        <div class="modal-header">
          <h4 class="modal-title">FLUX </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          
          
        <div class="modal-body">
            
            <p>November 8, 2017 to November 16, 2017</p>
            <br>
            <p><b>VENUE</b>: ESA Gallery, 1rd Floor</p><br>
            <p>Flux(h) <p>

            <p>Opening Reception: November 8, 12:00 – 2:00pm</p>
          </div>
        
          <div class="modal-footer">

        </div>
          
      </div>
    </div>
  </div>

  <!-- Modal 3 -->
 <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
          
        <div class="modal-header">
          <h4 class="modal-title">They Try to Bury Us
 </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          
          
        <div class="modal-body">
            
            <p>November 13, 2017 to November 16, 2017</p>
            <br>
            <p><b>VENUE</b>: ESA Open Grounds, 1st Floor</p><br>
            <p>Nessa Portman’s work is focused on the identities produced in communities living along the Rive Valley. <p>
            <p>They Try to Bury Us features extensive forms of media including paintings, drawings, and tapestries.</p>
            <p>Opening Reception: November 8, 12:00 – 2:00pm</p>
          </div>
        
          <div class="modal-footer">

        </div>
          
      </div>
    </div>

 </div>
  
  
  <!-- Modal 4 -->
  <div class="modal fade" id="myModal4" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
          
        <div class="modal-header">
          <h4 class="modal-title">DECK THE WALLS </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          
          
        <div class="modal-body">
            
            <p>November 8th, 2017</p>
            <br>
            <p><b>VENUE</b>: ESA Open corridors</p><br>
            <p>Anonymous display of small works by the School artists <p>

            <p>Opening Reception: November 8th,7:00pm</p>
          </div>
        
          <div class="modal-footer">

        </div>
          
      </div>
    </div>
  </div>
  
  
 </div>
  
  
<footer class="container-fluid text-center">
</footer>


</body>
</html>
