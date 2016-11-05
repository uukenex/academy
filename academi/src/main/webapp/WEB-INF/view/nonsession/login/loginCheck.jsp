<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#logo {
	width: 100px;
	height: 100px;
}

fieldset {
	width: 500px;
}

.inputTextStyle {
	height: 40px;
	width: 450px;
	margin-top: 1em;
	margin-bottom: 1em;
	margin-left: .75em;
	font-size: 12pt;
}

.button1 {
	width: 200px;
	height: 50px;
	background-color: #95B3D7;
	font-weight: blod;
	font-size: 12pt;
	margin-right: 30px;
	margin-left: 13px;
	margin-bottom: 30px;
	font-family: 나눔고딕 Georgia;
}

#banner {
	overflow: hidden;
	margin-top: 0em;
	margin-bottom: 1em;
	background: url(images/div_bar_copy.png) repeat-x bottom;
}

#findLink a {
	margin-left: 68px;
	margin-right: 70px;
	font-size: 13pt;
	font-family: 나눔고딕 Georgia;
}
</style>
<body>
	<sform:form modelAttribute="Users">
		<fieldset>
			<legend align="center">
				<img id="logo"
					src="<%=request.getContextPath()%>/join_icons/jackpot.jpg">
			</legend>
			<div>
				<input type="text" id="id" name="id" placeholder="아이디 입력"
					class="inputTextStyle"> <br /> <input type="password"
					id="password" name="password" placeholder="비밀번호 입력"
					class="inputTextStyle"> <br />
			</div>
			<div id="banner">
				<c:url value="/directloginUser" var="directloginUser" />
				<c:url value="/join" var="join" />
				<input type="submit" class="button1" id="submit" value="LOGIN"
					formaction="${directloginUser}" formmethod="post"> 
					<input type="submit" class="button1" value="회원가입" formaction="${join }">
				<br />
			</div>
			<div id="findLink">
				<c:url value="/findId" var="findId" />
				<c:url value="/findPassword" var="findpw" />
				<a href="${findId }">아이디 찾기</a> <img alt=""
					src="<%=request.getContextPath()%>/images/div_smallbar_vertical.png">
				<a href="${findpw }">비밀번호 찾기</a>
			</div>
			
			<div id="fb-root"></div>
			<a title="페이스북 아이디로 로그인" id="fb-auth" href="javascript:;">
				<img alt="facebookLogin" src="/images/facebookLogin.png"
						style="width: 20em; height: 5em;">
			</a>
		</fieldset>
	</sform:form>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$(document).on("ready", function() {
			if ("${message}" != null && "${message}" != ("")) {
				alert("${message}");
	<%session.removeAttribute("message");%>
		}
		})
		
	</script>
	
</body>
	<script language=javascript>
		window.fbAsyncInit = function() {
			FB.init({
				appId : '142101846257535',
				status : true,
				cookie : true,
				xfbml : true,
				oauth : true
			});
		}
		
			
			
		function updateButton(response) {
			var button = document.getElementById('fb-auth');

			if (response.authResponse) {

				FB.api('/me', function(response) {
			   		console.log("아이디 : " +response.id);
			   		console.log("이름 : " + response.name);
			   		console.log(typeof response.name);
			   		
			   		<c:url value="/checkfId" var="checkfId"/>
			   		var fId = response.id;
			   		var fName=response.name;
			   		
					if (confirm('facebookID:' + response.name
							+ ' 로 로그인하시겠습니까?') == true) {
						// 확인을 선택했을 경우의 처리.
						
						//페이스북 아이디로 로그인 한적 있는지 없는지 확인
						 $.ajax({
							type : "get",
							url : "${checkfId}",
							data : {
								"fId" : fId,
								"fName" : fName
							},
							success : function(res){
								if(res == 0){
									alert("등록되지 않은 아이디입니다. 정보를 등록합니다");
									window.location.replace('/facebookjoin?fId='+fId+'&fName='+fName);  
									console.log(fId);
									
								
								}else{
									
									
									window.location.replace('/facebooklogin?fId='+fId+'&fName='+fName);
									console.log(fId);
								}
							},
								error : function(xhr, status, error) {
									alert(error);
								}
							
						});
						 
						
					} else {
						// 취소를 선택했을 경우의 처리(아래는 페이스북 로그아웃 처리)
					      checkbox.checked = false;

					}
				});

			} else {
				FB.login(function(response) {
					if (response.authResponse) {
						FB.api('/me', function(response) {

						});
					} else {

					}
				}, {
					scope : 'email'
				});
			}
		}

		document.getElementById('fb-auth').onclick = function() {

			FB.Event.subscribe('auth.statusChange', updateButton);
			FB.getLoginStatus(updateButton);
		};

		(function() {
			var e = document.createElement('script');
			e.async = true;
			e.src = document.location.protocol
					+ '//connect.facebook.net/ko_KR/all.js';
			document.getElementById('fb-root').appendChild(e);
		}());
		
		
	</SCRIPT>
</html>