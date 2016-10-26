<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

td{
display: inline-block;
}
</style>
</head>
<body>
	<div style="width: 600px;">
		<div style="float: right;">
			<h3>현재 접속 Nick : "${Users.userNick }"</h3>
			<form method="post" action="/postWrite">
			<input type="hidden" id="routeNo" name="routeNo" value="3" />
				<table border="1">
					<tr>
						<td>제목</td>
						<td>
						<input name="title" type="text" size="50">
						</td>
					</tr>
					<tr style="height: 8em;">
						<td>경로 api가 들어갈부분</td>
						<td><input type="button" value="경로 새로만들기"></td>
						<td><input type="button" value="등록한 경로 가져오기"></td>
						
					</tr>
					<tr align="center" >
						<td colspan="2"  id="txtbox">
						<textarea id="txtarea" name="content" cols="80" rows="10"></textarea>
						</td>
					</tr>
					<tr align="center" >
						<td colspan="2"  id="txtbox">
						<textarea id="txtarea" name="content" cols="80" rows="10"></textarea>
						</td>
					</tr>
					<tr align="center" >
						<td colspan="2"  id="txtbox">
						<textarea id="txtarea" name="content" cols="80" rows="10"></textarea>
						</td>
					</tr>
					<tr align="right">
						<td colspan="2">
						<input type="button" id="addBtn" value="+">
						<input type="submit" name="Submit"
							value="쓰기"> <input type="button" name="Submit2"
							value="취소" onclick="history.back();"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
	$(document).on("click","#addBtn",function(){
		$("#txtbox").before($("#txtarea").clone());
		
	});
	</script>
</body>
</html>