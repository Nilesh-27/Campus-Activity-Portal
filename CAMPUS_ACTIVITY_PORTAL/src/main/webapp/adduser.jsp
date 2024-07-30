<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.UserService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.User"%>


<%
InitialContext context = new InitialContext();
UserService userService = (UserService)context.lookup("java:global/CAMPUS_ACTIVITY_PORTAL/UserServiceImpl!com.klef.ep.services.UserService");

String uid = request.getParameter("id");
int id =  (Integer) Integer.parseInt(uid);

String name = request.getParameter("name");
String dept = request.getParameter("dept");
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String contact = request.getParameter("contact");
String dob = request.getParameter("dob");
String gender = request.getParameter("gender");


User use = new User();
use.setId(id);
use.setName(name);
use.setDepartment(dept);
use.setEmail(email);
use.setPassword(pwd);
use.setContactno(contact);
use.setGender(gender);
use.setDateofbirth(dob);

userService.addUser(use);

response.sendRedirect("adduserok.jsp");

%>