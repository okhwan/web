<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String pr_id = request.getParameter("PR_ID");
	String sql = "DELETE FROM product WHERE pr_id = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, pr_id);

	int count = sm.executeUpdate();
	if(count == 1){
		out.print("<br><center>������ �����Ͽ����ϴ�.<br></center>"
				+ "<center><form action='main.jsp' method='post' >"
				+ "<input type='submit' value='����ȭ�� ����'><br></form>");
	}
	else{
		out.print("<br><center>������ �����Ͽ����ϴ�.<br></center>"
				+ "<center><form action='Product_list.jsp' method='post' >"
				+ "<input type='submit' value='����ȭ�� ����'><br></form>");
	}
	sm.close();
	conn.close();	
%>