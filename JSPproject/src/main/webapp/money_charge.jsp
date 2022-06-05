<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 구매 충전 페이지</title>
</head>
<body>
	<center><h1>구매 충전 페이지</h1></center>
	<% 
	String real = (String)session.getAttribute("memberId");
	String sql1 = "SELECT * FROM members WHERE id = ?";
	PreparedStatement sm1 = conn.prepareStatement(sql1);
	sm1.setString(1, real);
	ResultSet rs1 = sm1.executeQuery();
	while(rs1.next()){
		out.print(" 현재 소유 금액: " + rs1.getInt("wallet") +"</center>");
		out.print("<form action='money_charge1.jsp' name='user_info' method='post'>"+
				"<table><tr height='30'><td align='right'>충전 금액&nbsp;</td>"+
					"<td><input type='text' name='chargeMon'></td>"+
				"<td><input type='submit' value=' 충전하기 ''></td></tr></table>");
	}
		
    rs1.close();
    sm1.close();
    conn.close(); 
	%>
	
</body>
</html>