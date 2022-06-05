<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title> Members List </title>
</head>
<body>
	<center>
   <h1> 상품 목록 </h1>
   <hr>
   <table border="1">
   <% 
      String u_id = request.getParameter("userID");
      String u_pw = request.getParameter("userPW");
      String u_mail = request.getParameter("userMAIL");
      String u_name = request.getParameter("userNAME");
      
      Statement sm = conn.createStatement();
      ResultSet rs = sm.executeQuery("SELECT pr_id, pr_name, price, quan FROM product");
      
      String str = "";
      int count = 1;
      
      
      while(rs.next()){
            str += "<tr>" + "<td align = 'center'>"+ rs.getString("pr_id") + "</td>" + "<td>" + rs.getString("pr_name") + "</td>" + "<td>" +  rs.getInt("price")
               + "</td>" + "<td>" + rs.getString("quan") + "</td>" + 
               "<td><center><a href='buy.jsp?PR_ID=" + rs.getString("pr_id") + 
               "'> 상품 구매 </a> </center></td>" 
   				+ "</tr>";
         } 
        out.print("<tr> <td>상품 번호</td> <td>상품 이름</td>  <td>상품 가격</td> <td>수량</td> <td>구매</td> </tr>");
        out.print(str);
    
      rs.close();
      sm.close();
      conn.close();   
   %>
   <hr>
   <table border="0">
      <tr>
         <td>
            <form action="money_charge.jsp" method="post" >
               <input type="submit" value="금액 충전하기" >
            </form>
         </td>    
        
      </tr>
   </table></center>        
</body>
</html>   