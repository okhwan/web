<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ include file = "dbConn.jsp" %>

<% 
	String u_id = request.getParameter("uID");
	String u_pw = request.getParameter("uPW");
	String sql = "select id, passwd FROM celler WHERE id = \"" + u_id + "\" and passwd = \"" + u_pw + "\"";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	ResultSet count = sm.executeQuery();

	if(count.next()){
		if(u_id.equals(count.getString(1)) && u_pw.equals(count.getString(2))){
			session.setAttribute("prId", u_id);
			response.sendRedirect("Product_cell_list.jsp");
		}
	}
	else{
		response.sendRedirect("login.jsp");
	}
	sm.close();
	conn.close();		
%>

