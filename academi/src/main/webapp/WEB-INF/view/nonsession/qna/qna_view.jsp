<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE>
<html>
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
		
<title>Q & A</title>
</head>
<body>

	<!-- Drop Menu Header -->
		<jsp:include page="../layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../layout/menubar_header.jsp" />
		
	<div id="page-wrapper" class="boardPage-Wrapper">
		<div id="main">
			<div class="container">
				<div class="row main-row">
					
					<!-- Board Left Menu -->
						<jsp:include page="../layout/board_left_menu.jsp" />
						
					<!-- Board Body part -->
						<div class="8u 12u(mobile) important(mobile)">
							<section class="middle-content">
								<form id="frm">
									<section class="questionView">
										<input type="button" value="목록" id="listview" class="boardButtonStyle2">
										<table class="questionViewTable" align="center">
											<input type="hidden" name="qnaNo" value="${qna.qnaNo }" />
											<tr>
												<th colspan="2">
													<ul class="boardButtonList">
														<li>
															<c:choose>
													 		<c:when test="${qna.userId==Users.userId }">
													 		<input type="submit" value="수정" formaction="/session/qnaUpdate"
																			formmethod="post" class="boardButtonStyle1">
																<input type="submit" value="삭제" formaction="/qnaDelete"
																			formmethod="post" class="boardButtonStyle1">
																
															</c:when>
																<c:when test="${'admin'==Users.userId }">
																<input type="submit" value="수정" formaction="/session/qnaUpdate"
																			formmethod="post" class="boardButtonStyle1">
																<input type="submit" value="삭제" formaction="/qnaDelete"
																			formmethod="post" class="boardButtonStyle1">
																
															</c:when>
															</c:choose>
													 	</li>
													 </ul>
												</th>
											</tr>
											<tr>
												<th rowspan="2" align="center">
													<i class="fa fa-question-circle-o fa-4x"></i>
												</th>
												<td>
													<p id="questionViewTitle">${qna.qnaTitle }<p>
													<ul class="questionViewUl">
														<input type="hidden" name="userId" value="${qna.userId }" />
														<li>${qna.users.userNick }</li>
														<li><fmt:formatDate value="${qna.qnaDate }"
														pattern="yy-MM-dd HH:mm:ss" var="fmtDate" /> ${fmtDate}</li>
														<li>${qna.qnaCount }</li>
													</ul>
												</td>
											</tr>
											<tr class="questionContentStyle">
												<td>
													${qna.qnaQuestion }
												</td>
											</tr>
											<tr>
												<th colspan="2">
													<input type="button" value="답변하기" class="boardButtonStyle3" id="qna_answer_goButton">
												</th>
											</tr>
										</table>
									</section>
									
									<section class="answerView">
										
											<table class="answerViewTable" align="center">
												<colgroup>
													<col width="10%">
													<col width="*%">
												</colgroup>
												<tbody id="replyContentViewTableBody">
												<c:forEach var="answer" items="${answers }">
												<tr>
													<td rowspan="2" style="padding-left: 1.5em">
														<i class="fa fa-font fa-2x"></i>
													</td>
													<th colspan="2" class="questionContentStyle">
														${answer.answerContent }
													</th>
												</tr>
												<tr>
													<td>
														<ul class="questionViewUl">
															<li>${answer.users.userNick }</li>
															<li><fmt:formatDate value="${answer.answerDate }"
														pattern="yy-MM-dd HH:mm:ss" var="fmtDate" /> ${fmtDate}</li>
														</ul>
													</td>
													<td class="qnaSubmitButtonStyle">
														<c:if test="${answer.userId==Users.userId || 'admin'==Users.userId }">
														<input type="hidden" id="answerNo" name="answerNo" value="${answer.answerNo }">
														<input type="button" value="삭제" id="answerdelete" class="boardButtonStyle1">
														<input type="button" value="수정" id="answerupdate" class="boardButtonStyle1">
														</c:if>
													</td>
												</tr>
												<tr>
												</tr>
												</c:forEach>
												</tbody>
											</table>
										
									</section>
									
									<hr id="boardTitleHrStyle2">
									
									<div id="boardReplyWritter">
										<table class="answerViewTable">
											<colgroup>
												<col width="10%" />
												<col width="*%" />
												<col width="10%" />
											</colgroup>
											<tr>
												<td><label for="replyContent"><i class="fa fa-key fa-2x"></i></label></td>
												<c:if test="${!empty Users.userId }">	
												<td>
													<textarea cols="75" rows="4" id="answerContent" placeholder="댓글을 입력하세요."></textarea>
												</td>
												<td id="qnaWritterButton">
													<input type="button" value="등록" id="answerRegist" class="boardButtonStyle3">
												</td>
												</c:if>
												<c:if test="${empty Users.userId }">	
												<td>
													<textarea cols="75" rows="4" id="answerContent" placeholder="로그인 해주세요" readonly="readonly"></textarea>
												</td>
												</c:if>
											</tr>
										</table>
									</div>
								</form>
							</section>
					</div>
				</div>
				<!-- footer -->
					<jsp:include page="../layout/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
	
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$("#listview").on("click", function() {
			location.href = "qna?page=1";
		});
		
		<c:url value="/session/replyRegist3" var="replyRegist" />
		
			$("#answerRegist").on("click",function() {
						$.ajax({
							type : "post",
							url : "${replyRegist}",
							data : {
								userId : "${Users.userId}",
								answerContent : $("#answerContent").val(),
								qnaNo : "${qna.qnaNo}"
							},
							success : function(res) {
								$("#replyContentViewTableBody").empty();
								$("#answerContent").val("");
								alert("등록완료");
								var html="";
								$(res).each(function(idx,item){
									var answerId = item.userId;
									var date=new Date(item.answerDate);
									var year = date.getFullYear().toString();
									var month = (date.getMonth()+1).toString();
									var day = date.getDate().toString();
									var hour = date.getHours();
									var minute= date.getMinutes();
									var second= date.getSeconds();
									if(day<10){
										day="0"+day;
									}
									year=year.substr(2,2);
									var newDate = year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
									/* 여기는 수정부분 */
									
										
											
											html+="<tr> <td rowspan='2' style='padding-left: 1.5em'>";
											html+= "<i class='fa fa-font fa-2x'></i> </td>";
											html+= "<th colspan='2' class='questionContentStyle'>";
											html+= item.answerContent;
											html+= "</th> </tr> <tr> <td>";
											html+= "<ul class='questionViewUl'> <li>";
											html+= item.users.userNick;
											html+= "</li> <li>";
											html+= newDate + "</li> </ul> </td>";
											html+="<td class='qnaSubmitButtonStyle'>";
											html+="<input type='hidden' id='answerNo' name='answerNo' value='"+item.answerNo+"'>";
											if(item.userId==('${Users.userId}'|| 'admin'=='${Users.userId }')){
												html+="<input type='button' value='삭제' id='answerdelete' class='boardButtonStyle1'>";
											 	html+="	<input type='button' value='수정' id='answerupdate' class='boardButtonStyle1'>";
											}
											html+= "</td>";
											html+= "</td> </tr> <tr> </tr>";
									
									
								});
								
								$("#replyContentViewTableBody")[0].innerHTML +=html;
								
							},
							error : function(xhr, status, error) {
								alert(error);
							}
						});
					});
			
			
			//댓글삭제
			<c:url value="/deletereplyajax" var="deleteanswer" />
				$(document).on("click","#answerdelete",function() {
					var answerNo = $(this.previousElementSibling)[0].value;
					console.log(answerNo);
				
					$.ajax({
						type : "post",
						url : "${deleteanswer}",
						data : {
							answerNo : answerNo,
							qnaNo : "${qna.qnaNo}"
						},
						success : function(res) {
							$("#replyContentViewTableBody").empty();
							$("#answerContent").val("");
							alert("삭제 완료");
							var html="";
							$(res).each(function(idx,item){
								var answerId = item.userId;
								var date=new Date(item.answerDate);
								var year = date.getFullYear().toString();
								var month = (date.getMonth()+1).toString();
								var day = date.getDate().toString();
								var hour = date.getHours();
								var minute= date.getMinutes();
								var second= date.getSeconds();
								if(day<10){
									day="0"+day;
								}
								year=year.substr(2,2);
								var newDate = year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
								/* 여기는 수정부분 */
								html+="<tr> <td rowspan='2' style='padding-left: 1.5em'>";
								html+= "<i class='fa fa-font fa-2x'></i> </td>";
								html+= "<th colspan='2' class='questionContentStyle'>";
								html+= item.answerContent;
								html+= "</th> </tr> <tr> <td>";
								html+= "<ul class='questionViewUl'> <li>";
								html+= item.users.userNick;
								html+= "</li> <li>";
								html+= newDate + "</li> </ul> </td>";
								html+="<td class='qnaSubmitButtonStyle'>";
								html+="<input type='hidden' id='answerNo' name='answerNo' value='"+item.answerNo+"'>";
								if(item.userId==('${Users.userId}'|| 'admin'=='${Users.userId }')){
									html+="<input type='button' value='삭제' id='answerdelete' class='boardButtonStyle1'>";
								 	html+="<input type='button' value='수정' id='answerupdate' class='boardButtonStyle1'>";
								}
								html+= "</td>";
								html+= "</td> </tr> <tr> </tr>";
							});
							
							$("#replyContentViewTableBody")[0].innerHTML +=html;
							
						},
						error : function(xhr, status, error) {
							alert(error);
						}
					});
				});
			
				
				
				
				
				
				
				//댓글 수정
				$(document).on("click","#answerupdate",function() {
					var innertext = $(this.parentNode.parentNode.previousElementSibling)[0].outerText;
					console.log($(this.parentNode.parentNode.previousElementSibling)[0].lastElementChild);
					var target = $(this.parentNode.parentNode.previousElementSibling)[0].lastElementChild;
					target.innerHTML="";
					$("#answerupdate").css("display","none");
					var html="";
					html+="<textarea id='textareaByAnswerContent'>";
					html+=innertext;
					html+="</textarea>";
					html+="<input type='button' value='수정완료' id='answerupdateSave' class='boardButtonStyle1'>";
					target.innerHTML=html;
					
				}); 
				
				<c:url value="/answerupdateSave" var="answerupdateSave" />
				$(document).on("click","#answerupdateSave",function() {
					var answerNo = $(this.parentNode.parentNode.nextElementSibling.lastElementChild.firstElementChild)[0].value;
					//var contentValue = $(this.previousSibling)[0].innerHTML;
					var contentValue=$("#textareaByAnswerContent").val();
					console.log("콘텐츠"+contentValue);
					$.ajax({
						type : "post",
						url : "${answerupdateSave}",
						data : {
							 answerNo : answerNo,
							answerContent : contentValue,
							qnaNo : "${qna.qnaNo}"
						},
						success : function(res) {
							$("#replyContentViewTableBody").empty();
							$("#answerContent").val("");
							alert("수정 완료");
							var html="";
							$(res).each(function(idx,item){
								var answerId = item.userId;
								var date=new Date(item.answerDate);
								var year = date.getFullYear().toString();
								var month = (date.getMonth()+1).toString();
								var day = date.getDate().toString();
								var hour = date.getHours();
								var minute= date.getMinutes();
								var second= date.getSeconds();
								if(day<10){
									day="0"+day;
								}
								year=year.substr(2,2);
								var newDate = year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
								/* 여기는 수정부분 */
								
									
										
										html+="<tr> <td rowspan='2' style='padding-left: 1.5em'>";
										html+= "<i class='fa fa-font fa-2x'></i> </td>";
										html+= "<th colspan='2' class='questionContentStyle'>";
										html+= item.answerContent;
										html+= "</th> </tr> <tr> <td>";
										html+= "<ul class='questionViewUl'> <li>";
										html+= item.users.userNick;
										html+= "</li> <li>";
										html+= newDate + "</li> </ul> </td>";
										html+="<td class='qnaSubmitButtonStyle'>";
										html+="<input type='hidden' id='answerNo' name='answerNo' value='"+item.answerNo+"'>";
										if(item.userId==('${Users.userId}'|| 'admin'=='${Users.userId }')){
											html+="<input type='button' value='삭제' id='answerdelete' class='boardButtonStyle1'>";
										 	html+="	<input type='button' value='수정' id='answerupdate' class='boardButtonStyle1'>";
										}
										html+= "</td>";
										html+= "</td> </tr> <tr> </tr>";
								
								
							});
							
							$("#replyContentViewTableBody")[0].innerHTML +=html;
							$("#answerupdate").css("display","inline-block");
						},
						error : function(xhr, status, error) {
							alert(error);
						}
					});
				}); 
				
	</script>
	
	<script>
		var beforeBoard, nowBoard;
		beforeBoard = document.getElementById("current");
		beforeBoard.id = beforeBoard.id.replace("");
		$(".qnaBoard").attr('id', 'current');
	</script>
	
	<script>
		$('#qna_answer_goButton').click(function(){
			$('#answerContent').focus();
		});
	</script>
	
</body>
</html>