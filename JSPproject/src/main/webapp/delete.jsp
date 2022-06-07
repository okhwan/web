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
		out.print("<br><center>삭제에 성공하였습니다.<br></center>"
				+ "<center><form action='main.jsp' method='post' >"
				+ "<input type='submit' value='메인화면 가기'><br></form>");
	}
	else{
		out.print("<br><center>삭제에 실패하였습니다.<br></center>"
				+ "<center><form action='Product_list.jsp' method='post' >"
				+ "<input type='submit' value='메인화면 가기'><br></form>");
	}
	sm.close();
	conn.close();	
%>