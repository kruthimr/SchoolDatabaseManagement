<%-- 
    Document   : update
    Created on : Nov 12, 2017, 2:20:14 AM
    Author     : Kruthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String usn = request.getParameter("susn");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "webapplication";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

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
      
      .navbar{
  background-color:#2F4F4F;
  color:white;
  
  }

      div.formD{
    position: relative;
    top: 80px;
    text-align: center;
  }
 
  input[type=text] {
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


  </style>
    </head>
<body>
    
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
        <a class="navbar-brand" href="staffmarks.jsp">Go Back</a>
      </div>
</div>
</nav>
    <%
try{
    String staffid = session.getAttribute("staffID").toString();
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM smarks where cname in" 
                                + "(SELECT cname1 from  staff where sid='" + staffid + "')";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div class="container">
<form method="post" action="updatep.jsp">
    <div class="formD"
<input type="hidden" name="id" value="<%=resultSet.getString("susn") %>">
<input type="text" name="id" value="<%=resultSet.getString("susn") %>">
<br>
M1:<br>
<input type="text" name="m1" value="<%=resultSet.getString("m1") %>">
<br>
M2:<br>
<input type="text" name="m2" value="<%=resultSet.getString("m2") %>">
<br>
M3:<br>
<input type="text" name="m3" value="<%=resultSet.getString("m3") %>">
<br>
<button id="submit" type="submit" value="submit">Submit</button>
<br><br>
    </div>
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>