<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";

	try {
		id = (String)session.getAttribute("id");
		if(id==null || id.equals("")) {
			response.sendRedirect("03_sessionLoginForm.jsp");
		} else {
		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b><%= id %> 님이 로그인 하셨습니다.</b>
<form action="03_sessionLogout.jsp" method="post">
	<input type="submit" value="Log out"/>
</form>
</body>
</html>
<%		} // else
	} catch(Exception e) {
		e.printStackTrace();
	}
%>