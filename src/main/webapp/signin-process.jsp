<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pranitha.DBManager" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (DBManager.validateUser(username, password)) {
        session.setAttribute("loggedInUser", username);
        response.sendRedirect("dashboard.jsp"); // Replace with the dashboard page after successful sign-in
    } else {
        response.sendRedirect("error.jsp");
    }
%>
