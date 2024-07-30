<%@page import="com.klef.ep.models.Admin"%>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    InitialContext context = new InitialContext();
    AdminService adminService = (AdminService)context.lookup("java:global/CAMPUS_ACTIVITY_PORTAL/AdminServiceImpl!com.klef.ep.services.AdminService");
    
    String username = request.getParameter("username");
    String pwd = request.getParameter("pwd");
   
    
    Admin adm = adminService.AdminLogin(username, pwd);
    
    if(adm!=null)
    {   
        //session is implicit object
         session.setAttribute("adm", adm);  // emp is a session variable and emp is an object of type Employee class.
    	 response.sendRedirect("adminhome.jsp"); // will redirect to employee home     
    	 session.setAttribute("username", username);
    	 session.setAttribute("pwd",pwd);
    }
    else
    {
        response.sendRedirect("loginfail.jsp");  // will redirect to login failed page
    }
    %>
    
    