<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
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

<title>자유 게시판: ${comment.commentName}</title>

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
						
					<!-- Board body part -->
						<div class="8u 12u(mobile) important(mobile)">
							<section class="middle-content">
								<form>
								
									<!-- 질문 내용 자세히 보기 부분 -->
									<div>
										<section>
											<input type="button" value="목록" id="listview" class="boardButtonStyle2">
										</section>
										<hr id="boardTitleHrStyle1">
										<h3 id="boardTitleSytle1">${comment.commentName}</h3>
										<input type="hidden" name="commentNo" value="${comment.commentNo }" />
										<hr id="boardTitleHrStyle1">
										<table>
											<colgroup>
												<col width="10%" />
												<col width="*%" />
												<col width="10%" />
												<col width="20%" />
											</colgroup>
											<tr>
												<th>작성자</th>
												<input type="hidden" name="userId" value="${comment.userId }" />
												<td class="boardTitleSort boardFontBold">${comment.users.userNick}</td>
												<th>작성일</th>
												<td class="boardTitleSort boardFontBold">
													<fmt:formatDate value="${comment.commentDate}"
																			pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}
												</td>
											</tr>
											<tr>
												<td> </td>
												<td colspan="3" class="boardTitleSort">${comment.commentContent}</td>
											</tr>
											<tr>
												<td colspan="4">
													<ul class="boardButtonList">
														<li>
													 		<c:if test="${comment.userId==Users.userId }">
																<input type="submit" value="삭제" formaction="/freeDelete"
																			formmethod="post" class="boardButtonStyle1">
															</c:if>
													 	</li>
													 	<li>
													 		<c:if test="${comment.userId==Users.userId }">
																<input type="submit" value="수정" formaction="/session/freeUpdate"
																			formmethod="post" class="boardButtonStyle1">
															</c:if>
													 	</li>
													 </ul>
												</td>
											</tr>
										</table>
									</div>
									
									<hr id="boardTitleHrStyle2">
									
									<!-- 답변 자세히 보기 부분 -->
									<div>
										<c:forEach var="reply" items="${replys }">
										<table class="board_view" border="1">
											<tbody id="tbody">
												
												<colgroup>
													<col width="10%">
													<col width="2%">
													<col width="*%">
													<col width="8%">
													<col width="8%">
												</colgroup>
								            	<tr>
								            		<th class=boardFontBold>${reply.users.userNick}</th>
								            		<td>
								            			<i class="fa fa-ellipsis-v"></i>
								            		</td>
								            		<td class="boardTitleSort">
								            			<fmt:formatDate value="${reply.replyDate }"
														pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}
													</td>
													<td>
														<c:if test="${reply.userId==Users.userId }">
															<input type="submit" value="수정" formaction="/session/replyUpdate"
																		formmethod="post" class="boardButtonStyle1">
														</c:if>
													</td>
													<td>
														<c:if test="${reply.userId==Users.userId }">
														<input type="hidden" name="replyNo" value="${ reply.replyNo}">
															<input type="submit" value="삭제" formaction="/replyDelete"
																		formmethod="post" class="boardButtonStyle1">
														</c:if>
													</td>
								            	</tr>
										<tr>
											<th scope="row"> </th>
											<td colspan="4" class="boardTitleSort">${reply.replyContent }</td>
										</tr>
										</tbody>
									</table>
									<hr id="boardTitleHrStyle2">
									</c:forEach>
									</div>
									
									<!-- 답변 작성하는 부분 -->
									<div id="boardReplyWritter">
										<table>
											<colgroup>
												<col width="10%" />
												<col width="*%" />
												<col width="10%" />
											</colgroup>
											<tr>
												<td><label for="replyContent"><i class="fa fa-key fa-2x"></i></label></td>
												<td>
													<textarea cols="75" rows="2" id="replyContent" placeholder="댓글을 입력하세요."></textarea>
												</td>
												<td>
													<input type="button" value="등록" id="replyRegist" class="boardButtonStyle3">
												</td>
											</tr>
										</table>
									</div>
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
			location.href = "free?page=1";
		});
		
		<c:url value="/session/replyRegist" var="replyRegist" />
		$("#replyRegist").on("click",function(){
			$.ajax({
			type:"post",
			url:"${replyRegist}",
			data:{
				userId:"${Users.userId}",
				replyContent:$("#replyContent").val(),
				commentNo:"${comment.commentNo}"
			},
			success:function(res){
				console.log(res);
			
				$("tbody")[0].innerHTML="";
				$("#replyContent").val("");
				$(res).each(function(idx,item){
					alert("등록완료");
					
					console.log(item);
				
					console.log(item.replyCommentNo);
					
					var date=new Date(item.commentDate);
					var year = date.getFullYear().toString();
					var month = (date.getMonth()+1).toString();
					var date = date.getDate().toString();
					if(date<10){
						date="0"+date;
					}
					year=year.substr(2,2);
					var newDate = year+"-"+month+"-"+date;
					
					$("tbody")[0].innerHTML+=
							"<tr> <th class='boardFontBold'>" + item.users.userNick +
							"</th> <td> <i class='fa fa-ellipsis-v'> </i> </td>" +
							"<td class='boardTitleSort'>" +
							newDate + "</td>" +
							"<td> <c:if test='${reply.userId==Users.userId }'>" + 
							"<input type='submit' value='수정' formaction='/session/replyUpdate'" +
										"formmethod='post' class='boardButtonStyle1'> </c:if> </td>" +
							"<td> <c:if test='${reply.userId==Users.userId }'>" +
							"<input type='hidden' name='replyNo' value='${ reply.replyNo}'>" +
							"<input type='submit' value='삭제' formaction='/replyDelete'" +
											"formmethod='post' class='boardButtonStyle1'>" +
							"</c:if> </td> </tr>" +
							"<tr> <th scope='row'> </th> <td colspan='4' class='boardTitleSort'>" + 
							item.content + "</td> </tr>";
				});
			},
			error:function(request,status,error){
				alert(request.responseText);
			}
			});
		});
		
		
		
		
		$(document).on("ready", function() {
			if ("${message}" != null && "${message}" != ("")) {
				alert("${message}");
	<%session.removeAttribute("message");%>
		}
		});
	</script>
	
	
</body>
</html>