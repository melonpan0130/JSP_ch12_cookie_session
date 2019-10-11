<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인 폼</h2>
<form method="post" action="03_sessionLoginProc.jsp">
	ID : <input type="text" name="id"><br>
	PW : <input type="password" name="passwd"><br>
	<input type="submit" value="Login" />
	<input type="button" value="Join" onclick="location.href='01_InsertMemberForm.jsp'"/>
</form>
</body>
</html>