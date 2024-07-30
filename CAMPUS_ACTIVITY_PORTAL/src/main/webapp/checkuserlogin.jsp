<%@page import="com.klef.ep.models.User"%>
<%@page import="com.klef.ep.services.UserService"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    InitialContext context = new InitialContext();
    UserService userService = (UserService)context.lookup("java:global/CAMPUS_ACTIVITY_PORTAL/UserServiceImpl!com.klef.ep.services.UserService");
    
    String email = request.getParameter("email");
    String pwd = request.getParameter("pwd");
    
    User use = userService.UserLogin(email, pwd);
    
    if(use!=null)
    {   
        //session is implicit object
         session.setAttribute("use", use);  // emp is a session variable and emp is an object of type Employee class.
    	 response.sendRedirect("userhome.jsp"); // will redirect to employee home     
    	 session.setAttribute("email", email);
    	 session.setAttribute("pwd",pwd);
    }
    else
    {
        response.sendRedirect("loginfail.jsp");  // will redirect to login failed page
    }
    %>
    
    