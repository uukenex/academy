<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 확인</title>
</head>
<style>
	fieldset {
		background-color: #95B3D7;
		width: 800px;
	}
</style>
<body>
	<img alt="아아디 중복확인 img" 
			src="<%=request.getContextPath() %>/join_icons/id_validation_check.png">
	<fieldset>
		<table class="IdvalidationTable">
			<tr>
				<td>▷ 아이디 o3ocrazy 는 사용할 수 있습니다.</td>
				<td><input type="button" value="사용하기"></td>
			</tr>
			<tr>
				<td>▷ 다른 아이디 검색 입력 <input type="text" id="id" name="id" placeholder="아이디 입력"></td>
				<td><input type="button" value="확인"></td>
			</tr>
		</table>
	</fieldset>
	<img alt="Barimg" src="<%=request.getContextPath() %>/join_icons/bar.png">
	<br>
	<a href="#" >close</a>
</body>
</html>