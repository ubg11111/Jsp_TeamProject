<%@page import="com.market.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userEmail = request.getParameter("paramEmail").trim();
	
	UserDAO dao = UserDAO.getInstance();
	
	int res = dao.checkUserEmail(userEmail);
	
	out.println(res);

%>