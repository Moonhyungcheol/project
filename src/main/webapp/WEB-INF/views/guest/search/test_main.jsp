<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="search.do">
		위치<input type = "text" name = "addr" id = "addr">
		<br>
		체크인<input type = "date" name = "check_in" id = "check_in">
		<br>
		체크아웃<input type = "date" name = "check_out" id = "check_out">
		<br>
		인원수<input type = "text" name = "capacity" id = "capacity">
		<br>
		<input type = "submit" id = "search" value = "검색">
	</form>
</body>
<script type="text/javascript">
let localSave = () => {
		localStorage.setItem('addr',document.getElementById('addr').value);
		localStorage.setItem('check_in',document.getElementById('check_in').value);
		localStorage.setItem('check_out',document.getElementById('check_out').value);
		localStorage.setItem('capacity',document.getElementById('capacity').value);
		};
document.getElementById("search").addEventListener('click',localSave);

</script>
</html>