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
				alert("아이디를 입력해 주세요.");
				f.uID.focus();
				return false;
			}
			else if(f.uPW.value == "")
			{
				alert("비밀번호를 입력해 주세요.");
				f.uPW.focus();
				return false;
			}
			else return true;
		}		
	</script>
	</center>	
</head>
<body>
	<center>
	<h1>아가랑 구매자 로그인 </h1>
	<hr>
	<form action="userdrawCheck.jsp" name="user_info" method="post">
			<table>
			<tr height="30">
				<td align="right">아이디&nbsp;</td>
				<td><input type="text" name="userID"></td>
			</tr>
			</table>
			<table>
			<tr height="30">
				<td align="right">비밀번호&nbsp;</td>
				<td><input type="password" name="userPW"></td>
			</tr>
			</table>
			<tr height="50">
				<td></td>
				<td><input type="submit" value=" 로그인 ▶▶ "></td>
			</tr>
	</form>
	</center>
</body>
</html>