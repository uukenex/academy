<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행을 부탁해 회원 가입</title>
</head>
<style>
	img {
		width: 45px;
		height: 50px;
	}
	.inputTextStyle {
		height: 30px;
	}
	
</style>
<body>
	<sform:form action="#" method="post" modelAttribute="Users">
		<fieldset>
			<legend>Join Form</legend>				
				<table class="joinFormTable">
					<tr>
						<th>
							<label for="id" class="inputLabel">
								<img alt="IdIcon" src="<%=request.getContextPath() %>/join_icons/id_size_tag.png">
							</label>
						</th>
						<td>
							<input type="text" id="id" name="id" placeholder="아이디 입력"
									class="inputTextStyle">
						</td>
					</tr>
					<tr>
						<th>
							<label for="password" class="inputLabel">
								<img alt="NameIcon" src="<%=request.getContextPath() %>/join_icons/id_size_tag.png">
							</label>
						</th>
						<td>
							<input type="text" id="id" name="id" placeholder="아이디 입력"
									class="inputTextStyle">
						</td>
					</tr>
				</table>
		</fieldset>
	</sform:form>
</body>
</html>