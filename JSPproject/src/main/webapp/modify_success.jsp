<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> ��ǰ ���� �Ϸ� ������</title>
</head>
<body>
	<center><h1>��ǰ ���� �Ϸ� ������</h1></center>
	<% 
	out.print("<center>���������� ������ ����ǰ�, �ݾ��� ����Ǿ����ϴ�." +
			"<form action='main.jsp' method='post'>"
			+ "<input type='submit' value='�α��� ȭ�� ����'><br></form></center>");
	%>
	
</body>
</html>