<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 구매 충전 완료 페이지</title>
</head>
<body>
	<center><h1>구매 충전 완료 페이지</h1></center>
	<% 
	String real = (String)session.getAttribute("memberId");
	String money = request.getParameter("chargeMon");
	String sql1 = "UPDATE members set wallet = wallet + ? WHERE id = ?";
	PreparedStatement sm1 = conn.prepareStatement(sql1);
	sm1.setString(1, money);
	sm1.setString(2, real);
	int rs1 = sm1.executeUpdate();
	String sql = "SELECT * from members where id = ?";
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, real);
	ResultSet rs = sm.executeQuery();
	if(rs1 == 1 && rs.next()){
		out.print("<center>성공하였습니다!!" + "<br>현재 고객님이 소유하신 금액은: " +rs.getString("wallet"));
		out.print("<table border='0'><tr><td><form action='Product_list.jsp' method='post'>"+
				"<input type='submit' value='상품목록 가기'></form></td></tr></center>");
		out.print("<table border='0'><tr><td><form action='money_charge.jsp' method='post'>"+
				"<input type='submit' value='금액 더 충전하기'></form></td></tr></center>");
	}
		
    
    sm1.close();
    conn.close(); 
	%>
	
</body>
</html>