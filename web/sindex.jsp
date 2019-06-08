<%-- 
    Document   : sindex
    Created on : Nov 10, 2017, 12:04:34 AM
    Author     : Kruthi
--%>
 
  <%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
  body{
      position: relative;
      padding-top: 35px;
  }
  
 
  .navbar{
  background-color:#2F4F4F;
  position: fixed;
  top: 0;
  }
  #academics {padding-top:50px;height:500px;color: #fff; background-color:#F0FFF0;}
   
  
  th{
      padding:10px;
      text-align:left;
      
  }
  td{
      padding:10px;
      text-align: center;
      
  }
  
  
  tr:nth-child(odd){
      background-color:#f2f2f2;
  }
 
 
    
footer {
      background-color: #2F4F4F;
      position:fixed;
     
      bottom: 0px; 
      width:100%;
      color: white;
      padding: 22px;
    }
  </style>
  <script>
      
      function validate()
{
alert("Submitted");
}
      
      </script>
      
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

   
    
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          
      </button>
      <a class="navbar-brand" href="#">EMERALD SCHOOL OF ART</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
        
		  <li><a href="#">My Account</a></li>
          
            </ul>
 <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp""><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>


<%
String usn = request.getParameter("susn");
                                //form name
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "webapplication";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<div id="myacc" class="container-fluid">

     
  
   
  
    <table id="details" width="40%" > <br><br>
       <caption><b>Student Details:</b></caption>
 
     <%
try{ 
    System.out.println(usn);
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM student where susn='"+usn+"'";

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>

     
<tr>
<th>Name:</th>
<td> <%=resultSet.getString("sname") %> </td>
</tr>

<tr>
<th>USN:</th>
<td> <%=resultSet.getString("susn") %> </td>
</tr>

<tr>
<th>Phone:</th>
<td> <%=resultSet.getString("sphone") %> </td>
</tr>

<tr>
<th>E-mail:</th>
<td><%=resultSet.getString("semail") %>  </td>
</tr>

<tr>
<th>Date of birth:</th>
<td> <%=resultSet.getString("sdob") %> </td>
</tr>

<tr>
<th>Course</th>
<td> <%=resultSet.getString("cname") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<table width="25%">
    <caption><b>Internal Marks:</b></caption>
    
         <%
try{ 
    System.out.println(usn);
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM smarks where susn='"+usn+"'";

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
    <tr>
        <td>Internal Assessment 1:</td>
        <td ><%=resultSet.getString("m1") %></td>
    </tr>
    
    <tr>
        <td>Internal Assessment 2:</td>
        <td><%=resultSet.getString("m2") %></td>
    </tr>
    
    <tr>
        <td>Internal Assessment 3:</td>
        <td><%=resultSet.getString("m3") %></td>
    </tr>
    
    
    <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
    
</table>

    
    
    
</div>



<footer class="container-fluid text-center">
</footer>



</body>
</html>


