<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	height: 40px;
	width: 300px;
}

fieldset {
	width: 300px;
}

#logo {
	width: 100px;
	height: 100px;
}

#joinButton {
	width: 300px;
	height: 30px;
	background-color: #95B3D7;
	font-weight: bold;
	font-size: 12pt;
}
</style>
<body>
	<sform:form action="#" method="post" modelAttribute="Users">
		<fieldset>
			<legend align="center">
				<img id="logo" alt="Logo"
					src="<%=request.getContextPath()%>/join_icons/jackpot.jpg">
			</legend>
			<table cellspacing="15" class="joinFormTable">
				<tr>
					<th><label for="id" class="inputLabel"> <img
							alt="IdIcon"
							src="<%=request.getContextPath()%>/join_icons/id_size_tag.png">
					</label></th>
					<td><input type="text" id="id" name="id" placeholder="아이디 입력"
						class="inputTextStyle"></td>
					<td><input type="button" value="중복확인" id="checkId"></td>
				</tr>
				<tr>
					<th><label for="password" class="inputLabel"> <img
							alt="PasswordIcon"
							src="<%=request.getContextPath()%>/join_icons/pass_size_tag.png">
					</label></th>
					<td><input type="password" id="password" name="password"
						placeholder="비밀번호 입력" class="inputTextStyle"></td>
				</tr>
				<tr>
					<th><label for="passwordCk" class="inputLabel"> <img
							alt="PasswordCkIcon"
							src="<%=request.getContextPath()%>/join_icons/passCheck_size_tag.png">
					</label></th>
					<td><input type="password" id="passwordCk" name="passwordCk"
						placeholder="비밀번호 확인" class="inputTextStyle"></td>
				</tr>
				<tr>
					<th><label for="name" class="inputLabel"> <img
							alt="NameIcon"
							src="<%=request.getContextPath()%>/join_icons/name_size_tag.png">
					</label></th>
					<td><input type="text" id="name" name="name"
						placeholder="이름 입력" class="inputTextStyle"></td>
				</tr>
				<tr>
					<th><label for="phone" class="inputLabel"> <img
							alt="PhoneIcon"
							src="<%=request.getContextPath()%>/join_icons/phone_size_tag.png">
					</label></th>
					<td><input type="tel" id="phone" name="phone"
						placeholder="전화번호 입력" class="inputTextStyle"></td>
				</tr>
				<tr>
					<th><label for="email" class="inputLabel"> <img
							alt="emailIcon"
							src="<%=request.getContextPath()%>/join_icons/email_size_tag.png">
					</label></th>
					<td><input type="email" id="email" name="email"
						placeholder="이메일 입력 " class="inputTextStyle"></td>
				</tr>
				<tr>
					<th><label for="nickname" class="inputLabel"> <img
							alt="NicknameIcon"
							src="<%=request.getContextPath()%>/join_icons/nickname_size_tag.png">
					</label></th>
					<td><input type="text" id="nickname" name="nickname"
						placeholder="별명 입력" class="inputTextStyle"></td>
					<td><input type="button" value="중복확인" id="checkNick"></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" value="가입하기" id="joinButton">
					</td>
				</tr>
			</table>
		</fieldset>
	</sform:form>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
	
	var checkVal1 = false;
	var checkVal2 = false;
	
		<c:url value="/checkId" var="checkId" />
		$("#checkId").on("click", function() {
			$.ajax({
				type : "get",
				url : "${checkId}",
				data : {
					"userId" : $("#id").val()
				},
				success : function(res) {
					if (res == 0) {
						alert("사용가능한 아이디입니다.");
						checkVal1 = true;
					} else {
						alert("이미사용중인 아이디입니다.");
						checkVal1 = false;
					}
				},
				error : function(xhr, status, error) {
					alert(error);
				}
			});
		});
		
		<c:url value="/checkNick" var="checkNick" />
			$("#checkNick").on("click", function() {
				$.ajax({
					type : "get",
					url : "${checkNick}",
					data : {
						"userNick" : $("#nickname").val()
					},
					success : function(res) {
						if (res == 0) {
							alert("사용가능한 별명입니다.");
							checkVal2 = true;
						} else {
							alert("이미사용중인 별명입니다.");
							checkVal2 = false;
						}
					},
					error : function(xhr, status, error) {
						alert(error);
					}
				});
			});
		
	</script>

</body>
</html>