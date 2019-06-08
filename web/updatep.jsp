<%-- 
    Document   : updatep
    Created on : Nov 12, 2017, 2:45:39 AM
    Author     : Kruthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/webapplication";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String usn = request.getParameter("id");
String m1=request.getParameter("m1");
String m2=request.getParameter("m2");
String m3=request.getParameter("m3");
if(usn != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update smarks set susn=?,m1=?,m2=?,m3=? where susn='"+usn+"'";
ps = con.prepareStatement(sql);
ps.setString(1,usn);
ps.setString(2, m1);
ps.setString(3,m2);
ps.setString(4,m3);

int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("staffmarks.jsp");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>

