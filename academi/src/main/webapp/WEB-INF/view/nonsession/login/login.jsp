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
				<c:url value="/loginUser" var="loginUser" />
				<c:url value="/join" var="join" />
				<input type="submit" class="button1" id="submit" value="LOGIN"
					formaction="${loginUser}" formmethod="post"> <input
					type="submit" class="button1" value="회원가입" formaction="${join }">
				<br />
			</div>
			<div id="findLink">
				<c:url value="/findId" var="findId" />
				<c:url value="/findPassword" var="findpw" />
				<a href="${findId }">아이디 찾기</a> <img alt=""
					src="<%=request.getContextPath()%>/images/div_smallbar_vertical.png">
				<a href="${findpw }">비밀번호 찾기</a>
			</div>
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
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : 'your-app-id',
      xfbml      : true,
      version    : 'v2.8'
    });
    FB.AppEvents.logPageView();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
</html>