<%-- 
    Document   : login1
    Created on : Nov 10, 2017, 12:03:53 AM
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
       String usn,passwd;
       int state=0;
    
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection(url,USN,password);
       
       String userusn=request.getParameter("susn");
       String pwd=request.getParameter("psw");
       //left=string name   right=form name
        String sql = "call sp()";
       PreparedStatement statement = con.prepareStatement(sql);

       ResultSet rs = statement.executeQuery();
       while (rs.next()) {
            usn=rs.getString(1);
            passwd=rs.getString(2);
            if(userusn.equals(usn)&&pwd.equals(passwd))
            {
                response.sendRedirect("sindex.jsp?susn="+usn);
                state=1;
            }
             
       }
       if(state==0)
       {
         response.sendRedirect("login.jsp");
       }
            %>
        
    </body>
</html>
