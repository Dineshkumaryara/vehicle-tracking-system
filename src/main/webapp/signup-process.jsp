<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.pranitha.DBManager" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");
    String email = request.getParameter("email");

    if (DBManager.insertUser(username, password, email)) {
        response.sendRedirect("signin.jsp?success=registered");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
