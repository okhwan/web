<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> ��ǰ ���� ������</title>
</head>
<body> 
	<center><h1>��ǰ ���� ������</h1></center>
	<% 
	String real = (String)session.getAttribute("prId"); //product�� �ֹ��� ���̵�, ��ǰ �������ϸ� ��
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
		str += "<center>" + rs.getString("pr_name") + "�� ���� �Ͻðڽ��ϱ�?" + "<br>�ݾ�: " + rs.getInt("price")
		+ "   ���� ���� �ݾ�: " + rs1.getInt("wallet") +"</center>";
		sum =  rs1.getInt("wallet") - rs.getInt("price");
		pr = rs.getString("pr_id");
	}
	out.print(str);
	if(sum<0){
		out.print("<br><center>���� �ݾ��� �����Ͽ� ���Ű� �Ұ��� �մϴ�.<br></center>"
				+ "<center><form action='Product_list.jsp' method='post' >"
				+ "<input type='submit' value='��ǰ ��� ����'><br></form>");
		out.print(
				"<form action='money_charge.jsp' method='post' >"
				+ "<input type='submit' value='�ݾ� ���� �ϱ�' >"
				+ "</form></center>");		
	}
	else{
		session.setAttribute("PR_ID", pr);
		out.print("<br><center><form action='buy_success.jsp' method='post'>"
				+ "<input type='submit' value='�����ϱ�'>"
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