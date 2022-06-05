<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String u_id = request.getParameter("userID");
	String u_pw = request.getParameter("userPW");
	String sql = "select id FROM members WHERE id =? and passwd=?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_id);
	sm.setString(2, u_pw);
	ResultSet count = sm.executeQuery();
	
	if(count.next()){
		if(u_id.equals(count.getString("id"))){
			session.setAttribute("memberId", u_id);
			session.setAttribute("memberPw", u_pw);
			response.sendRedirect("Product_list.jsp");

		}
		
	}
	else{
		response.sendRedirect("userlogin.jsp");
	}
	sm.close();
	conn.close();	
		
%>