<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<center>
	<meta charset="UTF-8">
	<title> Login Form </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.loginForm;
			if(f.uID.value == "")
			{
				alert("가격을 입력해 주세요.");
				f.uID.focus();
				return false;
			}
			else if(f.uPW.value == "")
			{
				alert("추가 수량을 입력해 주세요.(없으면 0)");
				f.uPW.focus();
				return false;
			}
			else return true;
		}		
	</script>
	</center>	
</head>
<body>
<%
	String pr_id = request.getParameter("PR_ID");
	session.setAttribute("prId", pr_id);
	%>
	<center>
	<h1>판매자 물품 수정 </h1>
	<hr>
	<form action="modify_drawcheck.jsp" name="user_info" method="post">
			<table>
			<tr height="30">
				<td align="right">가격&nbsp;</td>
				<td><input type="text" name="Price"></td>
			</tr>
			</table>
			<table>
			<tr height="30">
				<td align="right">수량&nbsp;</td>
				<td><input type="text" name="Quan"></td>
			</tr>
			</table>
			<tr height="50">
				<td></td>
				<td><input type="submit" value=" 수정하기 "></td>
			</tr>
	</form>
	</center>
</body>
</html>

