<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ include file = "dbConn.jsp" %>

<% 
	String real = (String)session.getAttribute("prId");
	String pri = request.getParameter("Price");
	String qua = request.getParameter("Quan");
	String sql1 = "UPDATE product set price = ? , quan = quan + ? where pr_id = ? ";
	PreparedStatement sm1 = conn.prepareStatement(sql1);
	sm1.setString(1, pri);
	sm1.setString(2, qua);
	sm1.setString(3, real);
	int rs1 = sm1.executeUpdate();
	
	if(rs1 == 1){
		response.sendRedirect("modify_success.jsp");
	}
	sm1.close();
	conn.close();		
%>

