<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method = "post">
	<table border="1">
		<tr>
			<th>이미지</th>
			<th>휴대폰 번호</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>email</th>
		</tr>
		<tr>
			<td><input type="text" value="${member.profile_img}" name="profile_img"></td>
			<td><input type="text" value="${member.phone_number}" name="phone_number" ></td>
			<td><input type="password" value="" name="password"></td>
			<td><input type="text" value="${member.name}" name="name"></td>
			<td><input type="text" value="${member.email}" name="email"></td>
		</tr>
		<tr>
			<td colspan="5"><input type="submit" value="수정"></td>
		</tr>
	</table>
</form>
</body>
</html>