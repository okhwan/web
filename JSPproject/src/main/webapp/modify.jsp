<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 상품 수정 페이지</title>
</head>
<body> 
	<center><h1>상품 수정 페이지</h1></center>
	<% 
	String real = (String)session.getAttribute("prId"); //product의 주문자 아이디, 상품 수정만하면 끝
	String sql = "SELECT * FROM product WHERE pr_id = ?";
	String sql1 = "SELECT * FROM members WHERE id = ?";
	PreparedStatement sm = conn.prepareStatement(sql);
	PreparedStatement sm1 = conn.prepareStatement(sql1);
	sm.setString(1, pr_id);
	sm1.setString(1, real);
	ResultSet rs = sm.executeQuery();
	ResultSet rs1 = sm1.executeQuery();
	int sum = 0;
	String pr = "";
	String str = "";
	while(rs.next() && rs1.next()){
		str += "<center>" + rs.getString("pr_name") + "를 구매 하시겠습니까?" + "<br>금액: " + rs.getInt("price")
		+ "   현재 소유 금액: " + rs1.getInt("wallet") +"</center>";
		sum =  rs1.getInt("wallet") - rs.getInt("price");
		pr = rs.getString("pr_id");
	}
	out.print(str);
	if(sum<0){
		out.print("<br><center>소유 금액이 부족하여 구매가 불가능 합니다.<br></center>"
				+ "<center><form action='Product_list.jsp' method='post' >"
				+ "<input type='submit' value='상품 목록 가기'><br></form>");
		out.print(
				"<form action='money_charge.jsp' method='post' >"
				+ "<input type='submit' value='금액 충전 하기' >"
				+ "</form></center>");		
	}
	else{
		session.setAttribute("PR_ID", pr);
		out.print("<br><center><form action='buy_success.jsp' method='post'>"
				+ "<input type='submit' value='구매하기'>"
				+ "</form></center>");
	}
	
	rs.close();
    sm.close();
    rs1.close();
    sm1.close();
    conn.close(); 
	%>
	
</body>
</html>