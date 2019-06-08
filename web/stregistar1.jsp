<%-- 
    Document   : stregistar1
    Created on : Nov 10, 2017, 12:01:38 AM
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
            String stname =request.getParameter("sname");
            String phone=request.getParameter("sphone");
            String email =request.getParameter("smail");
            String dob =request.getParameter("DOB");
            String userusn =request.getParameter("susn");
            String password =request.getParameter("spw");
            String scourse=request.getParameter("course");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webapplication","root","root");
            Statement st=con.createStatement();
            st.executeUpdate("insert into student values('"+stname+"','"+password+"','"+userusn+"','"+phone+"','"+email+"','"+dob+"','"+scourse+"')");
            /*String Query ="select * from Login;";
            PreparedStatement psm=con.prepareStatement(Query);
            ResultSet rs=psm.executeQuery();
            while(rs.next())
            {
                usn=rs.getString(1);
                pw=rs.getString(2);
            }    
            if(username.equals(usn)&& password.equals(pw))
            {
                out.println("Good");
                //response.sendRedirect("HomePage.jsp");
            }
            else
            {*/
                response.sendRedirect("login.jsp");
            
        %>    
    </body>
</html>