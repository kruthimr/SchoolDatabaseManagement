<%-- 
    Document   : staffresp
    Created on : Nov 12, 2017, 9:43:21 PM
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



            footer {
                background-color: #2F4F4F;
                position:fixed;

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



                    </div>
                </div>
            </div>
        </nav>


        <%
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


            


            <table id="details"> <br>
                <caption><h4><b>Student Feedback,Queries and others:</b></h4></caption>

                

                <tr>
                    <th>Name</th>
                    <th>USN </th>
                    <th>Category</th>
                     <th>Description</th>
                      
                     
                </tr>
                <%
                    try {
                        String staffid = session.getAttribute("staffID").toString();
                       
                        connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                        statement = connection.createStatement();
                        String sql = "SELECT * FROM leavenotify where stucourse in" 
                                + "(SELECT cname1 from  staff where sid='" + staffid + "')";

                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                %>

                <tr>
                    <td> <%=resultSet.getString("stuname")%> </td>
                    <td><%=resultSet.getString("stuusn")%> </td>
                     <td> <%=resultSet.getString("type")%> </td>
                     <td> <%=resultSet.getString("descr")%> </td>
                     
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



        <footer class="container-fluid text-center">
        </footer>



    </body>
</html>

