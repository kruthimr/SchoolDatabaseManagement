<%-- 
    Document   : stafflogin1
    Created on : Nov 10, 2017, 1:20:59 PM
    Author     : Kruthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%@ page import="java.sql.*"%>
            <%@ page import="javax.sql.*"%>
            <%
       String url="jdbc:mysql://localhost:3306/webapplication";
       String USN="root";
       String password="root";
       String sid,passwd;
       int state=0;
    
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection(url,USN,password);
       
       String staffid=request.getParameter("sid");
       String spwd=request.getParameter("spw");
       String sql = "select sid,stpassword from staff";
       PreparedStatement statement = con.prepareStatement(sql);
       session.setAttribute("staffID", staffid);
       ResultSet rs = statement.executeQuery();
       
       while (rs.next()) {
            sid=rs.getString(1);
            passwd=rs.getString(2);
            if(staffid.equals(sid)&&spwd.equals(passwd))
            {
                response.sendRedirect("staffindex.jsp?sid="+sid);
                state=1;
            }
             
       }
       if(state==0)
       {
         response.sendRedirect("stafflogin.jsp");
       }
            %>
        
    </body>
</html>