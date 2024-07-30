<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "com.klef.ep.models.User"%>
    
    <%
    	User use = (User)session.getAttribute("use");
   
    	String email=(String)session.getAttribute("email");
    	String pwd=(String)session.getAttribute("pwd");
    	
    	if(email == null || pwd == null)
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

<h2 align="center">USER HOME</h2><hr color="black"/><hr color="black"/>

<a href="userhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="userprofile.jsp">Profile</a>&nbsp;&nbsp;&nbsp;
<a href="studycorner.jsp">Learn</a>&nbsp;&nbsp;&nbsp;

<a href="logout.jsp">Logout</a>


<br><br>

<h3 align = "center">I am in User Home</h3>

Welcome <%=use.getName() %>
</body>
</html>