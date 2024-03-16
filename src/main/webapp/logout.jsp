<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // Invalidate the user's session to log them out
    session.invalidate();
    response.sendRedirect("home.jsp"); // Redirect to the sign-in page
%>
