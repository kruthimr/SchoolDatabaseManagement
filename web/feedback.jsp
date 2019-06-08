<%-- 
    Document   : feedback
    Created on : Nov 12, 2017, 2:20:52 PM
    Author     : Kruthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
        <%  
            String usn="";
            String pw="";
            String sname =request.getParameter("name");
            String susn=request.getParameter("usn");
            String scourse =request.getParameter("course");
            String sreason =request.getParameter("reason");
            String types=request.getParameter("type");
         
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webapplication","root","root");
            Statement st=con.createStatement();
            st.executeUpdate("insert into leavenotify values('"+sname+"','"+susn+"','"+sreason+"','"+scourse+"','"+types+"')");
            /*String Query ="select susn from student;";
            PreparedStatement psm=con.prepareStatement(Query);
            ResultSet rs=psm.executeQuery();
            while(rs.next())
            {
               String usn=rs.getString(3);
               
            }    
            if(studentusn.equals(usn))
            {
                out.println("Good");
                //response.sendRedirect("sindex.jsp?susn"+student.susn);
            }
            else
            {*/
            response.sendRedirect("leavereq.jsp");
            
        %>    
    </body>
</html>