<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신분증 등록</title>
<style>
.item1 {
	grid-area: menu;
}

.item2 {
	grid-area: right;
}

.grid-container {
	display: grid;
	grid-template-areas: 'menu main right';
	grid-gap: 0.5px;
	background-color: #6C5B7B;
	padding: 30px;
}

.grid-container>div {
	background-color: white;
	text-align: center;
	padding: 250px 0;
	font-size: 30px;
}
</style>
</head>
<body bgcolor="#355C7D">

	<h2>호스트 등록을 위해 신분증을 등록해주세요</h2>

	<div class="grid-container">
			<tr>
				<td align="right"><img src="image/idcard.jpg" width="354.55 " height="540"></td>	
			</tr>
		<div class="item2">This area is for id card</div>
	</div>
	<div class=float>
		<tr>
			<td width="10%" align="center" float="right"></td>
			<td width="90%" align="right"><input type="file" id="filename"
				name="filename" accept=".jpg, .jpeg, .png, .gif"></td>
		</tr>
	</div>

</body>
</html>
