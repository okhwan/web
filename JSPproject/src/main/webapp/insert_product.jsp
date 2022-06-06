<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<center>
	<meta charset="UTF-8">
	<title> 물품 추가하기 </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.loginForm;
			if(f.prID.value == "")
			{
				alert("id를 입력해주세요");
				f.prID.focus();
				return false;
			}
			else if(f.prname.value == "")
			{
				alert("이름을 입력해 주세요.");
				f.prname.focus();
				return false;
			}
			else if(f.price.value == "")
			{
				alert("가격을 입력해 주세요.");
				f.price.focus();
				return false;
			}
			else if(f.quan.value == "")
			{
				alert("수량을 입력해 주세요.");
				f.quan.focus();
				return false;
			}
			else return true;
		}		
	</script>
	</center>	
</head>
<body>
	<center>
	<h1>물품 추가하기 </h1>
	<hr>
	<form action="insert_product_drawcheck.jsp" name="user_info" method="post">
			<table>
			<tr height="30">
				<td align="right">물품 ID &nbsp;</td>
				<td><input type="text" name="prID"></td>
			</tr>
			</table>
			<table>
			<tr height="30">
				<td align="right">물품 이름&nbsp;</td>
				<td><input type="text" name="prname"></td>
			</tr>
			</table>
			<table>
			<tr height="30">
				<td align="right">물품 가격&nbsp;</td>
				<td><input type="text" name="price"></td>
			</tr>
			</table>
			<table>
			<tr height="30">
				<td align="right">물품 수량&nbsp;</td>
				<td><input type="text" name="quan"></td>
			</tr>
			</table>
			<tr height="50">
				<td></td>
				<td><input type="submit" value="물품 추가하기"></td>
			</tr>
	</form>
	</center>
</body>
</html>