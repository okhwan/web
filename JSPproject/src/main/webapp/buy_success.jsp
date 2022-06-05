<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 구매 완료 페이지</title>
</head>
<body>
	<center><h1>구매 완료 페이지</h1></center>
	<% 
	String real = (String)session.getAttribute("memberId");
	String pr_id = (String)session.getAttribute("PR_ID");
	String sql = "SELECT * from product where pr_id = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, pr_id);
	ResultSet rs = sm.executeQuery();
	String num = "";
	if(rs.next()){
		num = String.valueOf(rs.getInt("price"));
	}
	String sql1 = "UPDATE members set wallet = wallet - ? WHERE id = ?";
	PreparedStatement sm1 = conn.prepareStatement(sql1);
	sm1.setString(1, num);
	sm1.setString(2, real);
	int rs1 = sm1.executeUpdate();
	
	String sql2 = "UPDATE product set quan = quan -1 WHERE pr_id= ?";
	PreparedStatement sm2 = conn.prepareStatement(sql2);
	sm2.setString(1, pr_id);
	int rs2 = sm2.executeUpdate();
	if(rs1 == 1 && rs2 == 1){
		out.print("<center>구매가 완료되었습니다<br>");
		out.print(
				"<form action='Product_list.jsp' method='post' >"
				+ "<input type='submit' value='상품 목록 가기' >"
				+ "</form></center>");
	}
	
		
    
    sm1.close();
    conn.close(); 
	%>
	
</body>
</html>