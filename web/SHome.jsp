<%-- 
    Document   : SHome
    Created on : Nov 9, 2017, 11:57:32 PM
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
  position: fixed;
  top: 0;
  }
 

  #welcome {padding-top:50px;height:700px;color: #fff; background-color: #F0FFF0;
      font-size: 17px;}
  #about {padding-top:50px;height:490px; background-color:#F0FFF0;
      font-size: 17px;}
  #academics {padding-top:50px;height:490px; background-color:#F0FFF0;
      font-size: 17px;}
  #contact {padding-top:50px;height:400px;color: #fff; background-color: #F0FFF0;
      font-size: 17px;}
  
 .carousel-inner > .item > img, .carousel-inner > .item > a > img {
    width: 100%;
    height: 600px;
}
footer {
      background-color: #2F4F4F;
      color: white;
      padding: 22px;
      position:relative;
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
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
		<li><a href="#welcome">Welcome</a></li>
                    
                
                
                
                
          <li><a href="#about">About</a></li>
		  <li><a href="#academics">Courses</a></li>
          <li><a href="#contact">Contact</a></li>
            </ul>
 <ul class="nav navbar-nav navbar-right">
     <li><a href="stafflogin.jsp"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;Staff Login</a></li>
     
     
     <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Student Portal
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
         
     
     
     
     
     
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;Student Login</a></li>
        <li><a href="leavereq.jsp">&nbsp;&nbsp;Leave your message</a></li>
        
      </ul>
          </li>
          
          <li><a href="stregistar.jsp">Registration</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>

<div id="welcome" class="container-fluid">
  <div class="container">  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="item active">
        <img src="welcome.png" alt="Welcome">
      </div>

      <div class="item">
        <img src="atrs.jpg" alt="I2">
      </div>
    
      <div class="item">
        <img src="gallery.jpg" alt="I3">
      </div>
    </div>
  </div>

</div>
</div>

    <div id="about" ><br><br>
        <h2>&nbsp;&nbsp;&nbsp;<font color="#2f4f4f"  ><b>ABOUT US</b></font></h2> <br><br>
        <font color="#2f4f4f"><p><b>&nbsp;&nbsp;&nbsp;&nbsp;EMERALD SCHOOL OF ART</b> is a non-residential institution founded in 
        1996 by the ESA Trust with the objective of providing art and design education in an environment<br>&nbsp;&nbsp;&nbsp;&nbsp;of creativity to maximize the individual’s potential.</p>
    <br><br>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;We believe that education is beyond instruction and skill; that knowledge is inherently integrated and complex and, hence, learning must be embedded in real-world<br>&nbsp;&nbsp;&nbsp;&nbsp;problems and situations.</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;We believe in looking beyond the origins of references and citations from scholarly texts and peer-reviewed journals; the references of artists and practitioners of the<br>&nbsp;&nbsp;&nbsp;&nbsp;unschooled also contribute to learning.</p>

    <p>&nbsp;&nbsp;&nbsp;&nbsp;We believe in extending education beyond the “gated” and the “preserved”; it should be “permeable” and “porous” allowing students to work at the level of the street<br>&nbsp;&nbsp;&nbsp;&nbsp;and the bazaar, and to explore and experiment with the textures of the rural and the urban.</p>
    <br>
    
    <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>Emerald's</b> culture encourages thinking, questioning and experimenting to harness the artistic and intellectual potential of each individual and place the institution<br>&nbsp;&nbsp;&nbsp;&nbsp;at the leading edge of contemporary art and design discourse.</p>

   
</div>

<div id="academics" >
  <br><br>
  <h2>&nbsp;&nbsp;&nbsp;<font color="#2f4f4f"  ><b>COURSES</b></font></h2> <br>
  <font color="#2f4f4f"><h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Courses we offer: <br><br></h3>
  <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Basic Drawing</b></h4><br>
  <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Painting Basics</b></h4><br>
  <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Intermediate Painting</b></h4><br>
  <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Words and Pictures</b></h4><br>
</div>

<div id="contact" >
    
    <h2>&nbsp;&nbsp;&nbsp;<font color="#2f4f4f"  ><b>CONTACT</b></font></h2><br>
    <font color="#2f4f4f"> <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EMERALD SCHOOL OF ART</h3>
    <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No. 21, 1st Phase, J.P. Nagar, Bangalore - 560 078, KARNATAKA, INDIA</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone No: 080-30410501 </p>

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email: ESAedu@gmail.com</p>
</div>

<footer class="container-fluid text-center">
</footer>


</body>
</html>
