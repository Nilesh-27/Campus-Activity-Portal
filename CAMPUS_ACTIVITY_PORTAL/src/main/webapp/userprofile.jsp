<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "com.klef.ep.models.User"%>
    
    <%
    	User use = (User)session.getAttribute("use");
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CAMPUS ACTIVITY PORTAL</title>
</head>
<body>

<h2 align="center">USER PROFILE</h2><hr color="black"/><hr color="black"/>

<a href="userhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="useprofile.jsp">Profile</a>&nbsp;&nbsp;&nbsp;
<a href="studycorner.jsp">Learn</a>&nbsp;&nbsp;&nbsp;

<br><br>



<h3 align = "center">I am in User Profile</h3>

<br><br>

Name : <%=use.getName() %><br>
Gender : <%=use.getGender() %><br>
Department : <%=use.getDepartment() %><br>
Date of Joining : <%=use.getDateofbirth() %><br>
Contact Number : <%=use.getContactno() %>


</body>
</html>