<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "com.klef.ep.models.Admin"%>
    
    <%
    	Admin adm = (Admin)session.getAttribute("adm");
   
    	String username=(String)session.getAttribute("username");
    	String pwd=(String)session.getAttribute("pwd");
    	
    	if(username == null || pwd == null)
    	{
    		response.sendRedirect("sessionexpire.jsp");
    	}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CAMPUS ACTIVITY PORTAL</title>
</head>
<body>

<h2 align="center">Admin HOME</h2><hr color="black"/><hr color="black"/>

<a href="#">Home</a>&nbsp;&nbsp;&nbsp;
<a href="#">Profile</a>&nbsp;&nbsp;&nbsp;
<a href="viewallusers.jsp">View Users</a>&nbsp;&nbsp;&nbsp;
<a href="adminlogout.jsp">Logout</a>


<br><br>

<h3 align = "center">I am in User Home</h3>


</body>
</html>