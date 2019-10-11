<%@page import="mirim.hs.kr.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	LogonDBBean logon = LogonDBBean.getInstance();
	int check = logon.userCheck(id, passwd);
	
	if(check == 1) {
		session.setAttribute("id", id);
		response.sendRedirect("03_sessionMain.jsp");
	} else if (check == 0) {
		response.sendRedirect("03_sessionLoginForm.jsp");
	} else if(check == -1) {%>
	<script>
		alert("id가 존재하지 않습니다.");
		location.href="01_InsertMemberForm.jsp";
	</script>	
<%	}
%>
</body>
</html>