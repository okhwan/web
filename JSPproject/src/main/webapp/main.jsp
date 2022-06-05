<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 메인 화면 </title>
</head>
<body>
<center>
	<h1> 아가랑 쇼핑몰 </h1>
	<p>
	<table border="0">
		<tr>
			<td>
				<form action="sellerjoin.jsp" method="post" >
					<input type="submit" value=" ◀ 판매자 회원가입 " >
				</form>
			</td>
			<td>
				<form action="login.jsp" method="post" >
					<input type="submit" value=" 판매자 로그인 " >
				</form>
			</td>
			</td>
			<td>
				<form action="userlogin.jsp" method="post" >
					<input type="submit" value=" 구매자 로그인 " >
				</form>
			</td>
			<td>	
				<form action="signup.jsp" method="post" >
					<input type="submit" value=" 구매자 회원가입 ▶" >
				</form>
			</td>
		</tr>	
	</table>
	</center>		
</body>
</html>