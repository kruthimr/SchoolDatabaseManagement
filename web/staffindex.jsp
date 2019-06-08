<%-- 
    Document   : staffindex
    Created on : Nov 10, 2017, 1:34:10 PM
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


            th,td{
                padding:20px;
                text-align: left;

            }

            tr:nth-child(odd){
                background-color:#f2f2f2;
            }
            
            
            div.selections{
                position: relative;
                left: 800px;
                top:-500px;
            }

            footer {
                background-color: #2F4F4F;
                position:relative;

                bottom: 0px; 
                width:100%;
                color: white;
                padding: 22px;
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

                    </button>
                    <a class="navbar-brand" href="#">EMERALD SCHOOL OF ART</a>
                </div>
                <div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">

                            <li><a href="#">My Account</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                        </ul>
                        
                    </div>
                </div>
            </div>
        </nav>


        <%
            String sid = request.getParameter("sid");
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

            
            
            <table id="details"> 
                <br>
                <caption><h4><b>Staff Details:</b></h4></caption>

                <%
                    try {

                        
                        connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                        statement = connection.createStatement();
                        String sql = "SELECT * FROM staff where sid='" + sid + "'";

                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>


                <tr>
                    <th>Staff ID:</th>
                    <td> <%=resultSet.getString("sid")%> </td> 
                </tr>

                <tr>
                    <th>Name:</th>
                    <td><b> <%=resultSet.getString("stname")%></b> </td>
                </tr>

                <tr>
                    <th>Course handled:</th>
                    <td> <%=resultSet.getString("cname1")%> </td>
                </tr>
                
        
                <tr>
                    <th>Age:</th>
                    <td> <%=resultSet.getString("stage")%> </td>
                </tr>

                <tr>
                    <th>Experience:</th>
                    <td> <%=resultSet.getString("stexp")%> </td>
                </tr>

                <tr>
                    <th>Mobile:</th>
                    <td> <%=resultSet.getString("stmobile")%> </td>
                </tr>

                <tr>
                    <th>E-mail:</th>
                    <td> <%=resultSet.getString("stmail")%> </td>
                </tr>



                <%
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>
            <br>
            <table width="50%">
            <caption><h4><b>Course Details:</b></h4></caption>

                <%
                    try {
                        String staffid = session.getAttribute("staffID").toString();
                        connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                        statement = connection.createStatement();
                        String sql = "SELECT * FROM course where cname in" 
                                + "(SELECT cname1 from  staff where sid='" + staffid + "')";

                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>
             
                <tr>
                    <th>Course ID:</th>
                    <td><%=resultSet.getString("cid")%></td>
                    
                </tr>
                
                <tr>
                    <th>Course Description:</th>
                    <td> <%=resultSet.getString("cdesc")%> </td>
                </tr>
            <%
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
                
            </table>
        
            <br>



        </div>

        <div class="selections">
            <table>
                <tr>
                    <th><a href="staffstudent.jsp"> Click here to view student records</a></th>

                </tr>
                <tr>

                    <th></th>
                </tr>
                <tr>

                    <th><a href="staffmarks.jsp"> Click here to view student marks</a></th>
                </tr>
                 <tr>

                    <th></th>
                </tr>
                <tr>

                    <th><a href="staffresp.jsp"> Click here for Student Feedback, Queries and more </a></th>
                </tr>
            </table>

        </div>


        <footer class="container-fluid text-center">
        </footer>



    </body>
</html>
