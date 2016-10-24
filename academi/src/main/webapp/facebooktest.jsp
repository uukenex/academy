<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<html>

<head>

<title>facebook login API Test</title>


</head>

<body>
	<div id="fb-root"></div>

	<a title="페이스북 아이디로 로그인" id="fb-auth" href="javascript:;">로그인 버튼</a>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script language=javascript>
		window.fbAsyncInit = function() {
			FB.init({
				appId : '1785463865045966',
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
								 	window.open('/facebookjoin?fId='+fId+'&fName='+fName);  
									console.log(fId);
									
								
								}else{
									alert("로그인 되셧습니다.");
									console.log(fId);
								}
							},
								error : function(xhr, status, error) {
									alert(error);
								}
							
						});
						 
						
					} else {
						// 취소를 선택했을 경우의 처리(아래는 페이스북 로그아웃 처리)
						FB.logout(function(response) {
							
						});
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
	<input type="text" id="id" >
	

</body>

</html> 
