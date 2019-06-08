<%-- 
    Document   : logout
    Created on : Nov 11, 2017, 9:16:28 AM
    Author     : Kruthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("SHome.jsp");
        %>
       
    </body>
</html>
