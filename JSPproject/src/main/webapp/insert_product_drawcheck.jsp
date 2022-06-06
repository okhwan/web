<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String PRID = request.getParameter("prID");
	String PRNAME = request.getParameter("prname");
	String PRICE = request.getParameter("price");
	String QUAN = request.getParameter("quan");
	String CELLERID = (String)session.getAttribute("prId");
	
	String sql = "INSERT INTO product VALUES";
	sql += "('" + PRID + "','" + PRNAME + "','" + PRICE + "','"+
	QUAN + "','"+ CELLERID + "')";

	Statement sm = conn.createStatement();
	
	int count = sm.executeUpdate(sql);
	if(count == 1){
		out.print("<center><h1>물품 추가 성공!!</h1>" +
				"<table border='0'><tr><td><form action='main.jsp' method='post'>"+
				"<input type='submit' value='메인화면 가기'></form></td></tr></center>");
	}else{
		out.println("물품 추가 실패!");
		response.sendRedirect("main.jsp");
	}
	sm.close();
	conn.close();	
%>