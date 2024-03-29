<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
 	<meta name="author" content="Nathan Searles">
  		
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
		
	<title>${qna.qnaTitle } 수정</title>

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>	
</head>

<body>

	<!-- Drop Menu Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp" />
		
	<div id="page-wrapper" class="boardPage-Wrapper">
		<div id="main">
			<div class="container">
				<div class="row main-row">
					
					<!-- Board Left Menu -->
						<jsp:include page="../../nonsession/layout/board_left_menu.jsp" />
						
					<!-- Board body part -->
						<div class="8u 12u(moblie) important(moblie)">
							<section class="middle-content">
								<h3>${qna.qnaTitle } 수정</h3>
								<input type="hidden" name="qnaNo" value="${qna.qnaNo }" />
								<form action="/qnaUpdate" id="frm" method="post">
									<table class="boardUpdateTable">
										<colgroup>
											<col width="15%">
											<col width="15%">
											<col width="15%">
											<col width="*%">
										</colgroup>
										<tr id="boardUpdateCheck">
											<input type="hidden" name="qnaNo" value="${qna.qnaNo }" />
											<th scope="row">작성자</th>
						                    <td>
						                        <input type="hidden" id="IDX" name="IDX" value="">
						                        ${qna.users.userNick }
						                    </td>
						                    <th scope="row">작성일</th>
						                    <td><fmt:formatDate value="${qna.qnaDate }"
												pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}</td>
										</tr>
										<tr>
											<th>제목</th>
											<td colspan="3">
												<input type="text" name="title" id="editorTitleWritter"
														value="${qna.qnaTitle }">
											</td>
										</tr>
										<tr>
											<td colspan="4">
												<textarea name="content" id="content" class="editorContentWritter">
													${qna.qnaQuestion }
												</textarea>
											</td>
										</tr>
										<tr>
											<td colspan="4">
												<c:url value="/qnaUpdate" var="update"></c:url>
												<input type="button" name="Submit2" class="editorButtonStyle1" value="취소" onclick="history.back();">
												<input type="button" id="savebutton" class="editorButtonStyle1" value="완료" />
											</td>
										</tr>
									</table>
								</form>
							</section>
						</div>
				</div>
			</div>
		</div>
	</div>
		
   <script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$("#listview").on("click", function() {
			location.href = "/qna?page=1";
		})
		
	</script>
	
	<script>
		$(function(){
		    //전역변수선언
		    var editor_object = [];
		     
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object,
		        elPlaceHolder: "content",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		     
		    //전송버튼 클릭이벤트
		    $("#savebutton").click(function(){
		        //id가 content인 textarea에 에디터에서 대입
		        editor_object.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		         
		        // 이부분에 에디터 validation 검증
		         
		        //폼 submit
		        $("#frm").submit();
		    })
		})
		</script>
		
		<script>
		var beforeBoard, nowBoard;
		beforeBoard = document.getElementById("current");
		beforeBoard.id = beforeBoard.id.replace("");
		$(".qnaBoard").attr('id', 'current');
	</script>
</body>
</html>
