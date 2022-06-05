<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 가입 </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.user_info;
			if(f.userID.value.length < 2 || f.userID.value.length > 16)
			{
				alert("아이디는 2~16자 이내로 입력해야 합니다.");
				f.userID.focus();
				return false;
			}
			else if(f.userPW.value.length < 6)
			{
				alert("비밀번호는 6자 이상으로 입력해야 합니다.");
				f.userPW.focus();
				return false;
			}
			else if(f.userMAIL.value == "")
			{
				alert("이메일 주소는 반드시 입력해야 합니다.");
				f.userMAIL.focus();
				return false;
			}			
			else return true;
		}		
	</script>
</head>
<body>
<center>
	<h1>아가랑 판매자 로그인 </h1>
	<hr>
	<form action="sell_insertDB.jsp" name="user_info" 
		method="post" onsubmit="return checkFun()">
		<fieldset style="width:230px">
			<legend> 회원 가입 화면 </legend><p>
	
			아이디  <br>
			<input type="text" size = "16" name="userID"><br><br>
		
			비밀번호  <br> 
			<input type="password" size = "16" name="userPW"><br><br>
			
			이름 <br>
			<input type="name" size="30" name="userNAME"><br><br>
			
			이메일  <br>
			<input type="email" size="30" name="userMAIL"><br><br>	
				
			<input type="reset" value=" ◀ 다시작성 ">
			<input type="submit" value=" 가입하기 ▶ ">
			<br><br>
		</fieldset>
	</form>
	</center>
</body>
</html>