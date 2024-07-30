<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   import="java.sql.*,java.util.List"  %>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.User"%>
<%@page import="com.klef.ep.models.Admin"%>
<!DOCTYPE html>
<html>
<head>
<title>Campus Activity Portal</title>
<link type="text/css"  rel="stylesheet"  href="style.css"/>
</head>

<body>

  <hr color="black"/><hr color="black"/>
  <br/>

<a href="adminhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="viewallusers.jsp">View All Employees</a>&nbsp;&nbsp;&nbsp;
<a href="adminlogout.jsp">Logout</a>

<br>

<h2 align="center"><u>View All Employees</u></h2>
<table align="center"  border=2>
<tr>
<th>ID</th>
<th>Full Name</th>
<th>Email</th>
<th>Date of Birth</th>
<th>Gender </th>
<th>Department</th>
<th>Contact No</th>
<th>Action</th>
</tr>
<%
InitialContext context = new InitialContext();
AdminService adminService = (AdminService)context.lookup("java:global/CAMPUS_ACTIVITY_PORTAL/AdminServiceImpl!com.klef.ep.services.AdminService");

List<User> uselist = adminService.viewAllUsers();

for(User use : uselist)
{
	  %>
	  
	    <tr>
	    	  <td><%=use.getId()%></td>
	    	  <td><%=use.getName()%></td>
	    	  <td><%=use.getEmail()%></td>
	    	  <td><%=use.getDateofbirth()%></td>
	    	  <td><%=use.getGender()%></td>
	    	  <td><%=use.getDepartment()%></td>	    
	    	  <td><%=use.getContactno()%></td>	   
	    	   <td><a href="deleteuser.jsp?eid=<%=use.getId()%>">Delete</a></td>	
	    </tr>
	  
	  <%
}

%>
</table>


</body>
</html>