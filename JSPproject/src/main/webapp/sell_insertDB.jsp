<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String u_id = request.getParameter("userID");
	String u_pw = request.getParameter("userPW");
	String u_mail = request.getParameter("userMAIL");
	String u_name = request.getParameter("userNAME");
	
	String sql = "INSERT INTO celler(id, passwd, email, name) VALUES";
	sql += "('" + u_id + "','" + u_pw + "','" + u_mail + "','"+
	u_name +"')";

	Statement sm = conn.createStatement();
	
	int count = sm.executeUpdate(sql);
	if(count == 1){
		response.sendRedirect("signupSuccess.jsp");
	}else{
		out.println("회원가입 실패!");
		response.sendRedirect("sellerjoin.jsp");
	}
	sm.close();
	conn.close();	
%>