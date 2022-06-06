<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title> 판매자 상품 목록 </title>
</head>
<body>
	<center>
   <h1> 상품 목록 </h1>
   <hr>
   <table border="1">
   <% 
   	  String real = (String)session.getAttribute("prId");
      String sql = "SELECT * FROM product WHERE cell_id=?";
      PreparedStatement sm = conn.prepareStatement(sql);
  	  sm.setString(1, real);
  	  ResultSet rs = sm.executeQuery();
      
      String str = "";
      int count = 1;
      
      
      while(rs.next()){
            str += "<tr>" + "<td align = 'center'>"+ rs.getString("pr_id") + "</td>" + "<td>" + rs.getString("pr_name") + "</td>" + "<td>" +  rs.getInt("price")
               + "</td>" + "<td>" + rs.getString("quan") + "</td>" + 
               "<td><center><a href='modify.jsp?PR_ID=" + rs.getString("pr_id") + 
               "'> 상품 수정 </a> </center></td>" 
   				+ "</tr>";
         } 
        out.print("<tr> <td>상품 번호</td> <td>상품 이름</td>  <td>상품 가격</td> <td>수량</td> <td>구매</td> </tr>");
        out.print(str);
    
    
      rs.close();
      sm.close();
      conn.close();   
      out.print("<center><form action='insert_product.jsp' method='post'>" +
  			"<input type='submit' value='물품 추가 하기'><br></form></center>");
   %>
        
</body>
</html>   