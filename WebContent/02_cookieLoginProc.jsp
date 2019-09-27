<%@page import="mirim.hs.kr.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("pw");
	
	LogonDBBean logon = LogonDBBean.getInstance();
	int check = logon.userCheck(id, passwd);
	
	if(check == 1){ // 회원
		Cookie cookie = new Cookie("coupang", id);
		cookie.setMaxAge(60*20); // 20분
		response.addCookie(cookie);
		response.sendRedirect("02_cookieMain.jsp");
	}
	else if (check == 0) {
		response.sendRedirect("02_cookieLoginForm.jsp");
	}
	else if (check == -1) {
		response.sendRedirect("01_InsertMemberForm.jsp");
	}
%>