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
			<input type="hidden" id="routeNo" name="routeNo" value="92" />
				<table border="1" id="mytable">
					<tr>
						<td>제목</td>
						<td>
						<input name="title" type="text" size="50">
						</td>
					</tr>
					<tr >
						
						<td><input type="button" value="경로 새로만들기"></td>
						<td><input type="button" value="등록한 경로 가져오기"></td>
						<td><input type="button" id="addBtn" value="+">
						<input type="button" id="subBtn" value="-">
						<input type="submit" name="Submit"
							value="쓰기"> <input type="button" name="Submit2"
							value="취소" onclick="history.back();"></td>
					</tr>
					<tr style="height: 8em;">
					<td  style="height: 8em;">경로 api가 들어갈부분</td>
					</tr>
					<tbody>
					<tr>
						<td>
						<textarea id="txtarea" name="content0" cols="80" rows="10"></textarea>
						</td>
					</tr>
					</tbody>
					
				</table>
			</form>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
	var i=1;
	$("#addBtn").on("click",function(){
		
		 $('#mytable > tbody:last').append(
					 "<tr><td>"
					+"<textarea id='txtarea' name='content"+i+"' cols='80' rows='10'></textarea>"
					+"</td></tr>");
		 i++;
	});
	$("#subBtn").on("click",function(){
		$('#mytable > tbody:last > tr:last').remove();
		i--;
	});
	
	</script>
</body>
</html>