<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 물품 수정 완료 페이지</title>
</head>
<body>
	<center><h1>물품 수정 완료 페이지</h1></center>
	<% 
	out.print("<center>성공적으로 수량이 변경되고, 금액이 변경되었습니다." +
			"<form action='main.jsp' method='post'>"
			+ "<input type='submit' value='로그인 화면 가기'><br></form></center>");
	%>
	
</body>
</html>