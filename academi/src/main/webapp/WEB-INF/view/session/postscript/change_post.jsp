<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="frm">
        <table class="board_view" id="mytable">
            <colgroup>
                <col width="15%"/>
                <col width="35%"/>
                <col width="15%"/>
                <col width="35%"/>
            </colgroup>
            <caption>게시글 수정</caption>
           
                <tr>
                 <input type="hidden" name="reviewNo" value="${review.reviewNo }" />
                 <input type="hidden" name="routeNo" value="3" />
                    <th scope="row">작성자</th>
                    <td>
                        <input type="hidden" id="IDX" name="IDX" value="">
                        ${review.users.userNick}
                    </td>
                    <th scope="row">작성일</th>
                    <td><fmt:formatDate value="${review.reviewDate}"
						pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}</td>
                </tr>
                <tr>
                    <th scope="row">제목</th>
                    <td colspan="3">
                        <input type="text" id="TITLE" name="title" class="wdp_90" value="${review.reviewTitle}"/>
                    </td>
                </tr>
               
                <tr align="right">
                	<td colspan="4">
                	<input type="button" id="addBtn" value="+">
					<input type="button" id="subBtn" value="-">
                 	<input type="button" id="listview" value="목록으로">
                 	<c:url value="/reviewDelete" var="delete"></c:url>
                 	<c:url value="/reviewUpdate" var="update"></c:url>
    			 	<input type="submit" formaction="${delete }" formmethod="post" value="삭제하기">
    			 	<input type="submit"  formaction="${update }" formmethod="post"  value="저장하기">
                	</td>
                </tr>
            	<tbody>
					<tr>
						<td>
						<textarea id="txtarea" name="content0" cols="80" rows="10">${review.reviewContent0 }</textarea>
						</td>
					</tr>
					
				<c:if test="${!empty review.reviewContent1 }">
					<tr>
						<td>
						<textarea id="txtarea" name="content1" cols="80" rows="10">${review.reviewContent1 }</textarea>
						</td>
					</tr>
				</c:if>
				
				<c:if test="${!empty review.reviewContent2 }">
					<tr>
						<td>
						<textarea id="txtarea" name="content2" cols="80" rows="10">${review.reviewContent2 }</textarea>
						</td>
					</tr>
				</c:if>
				
				<c:if test="${!empty review.reviewContent3 }">
					<tr>
						<td>
						<textarea id="txtarea" name="content3" cols="80" rows="10">${review.reviewContent3 }</textarea>
						</td>
					</tr>
				</c:if>
				
				<c:if test="${!empty review.reviewContent4 }">
					<tr>
						<td>
						<textarea id="txtarea" name="content4" cols="80" rows="10">${review.reviewContent4 }</textarea>
						</td>
					</tr>
				</c:if>
				
				<c:if test="${!empty review.reviewContent5 }">
					<tr>
						<td>
						<textarea id="txtarea" name="content5" cols="80" rows="10">${review.reviewContent5 }</textarea>
						</td>
					</tr>
				</c:if>
				
				<c:if test="${!empty review.reviewContent6 }">
					<tr>
						<td>
						<textarea id="txtarea" name="content6" cols="80" rows="10">${review.reviewContent6 }</textarea>
						</td>
					</tr>
				</c:if>
				
				<c:if test="${!empty review.reviewContent7 }">
					<tr>
						<td>
						<textarea id="txtarea" name="content7" cols="80" rows="10">${review.reviewContent7 }</textarea>
						</td>
					</tr>
				</c:if>
				
				<c:if test="${!empty review.reviewContent8 }">
					<tr>
						<td>
						<textarea id="txtarea" name="content8" cols="80" rows="10">${review.reviewContent8 }</textarea>
						</td>
					</tr>
				</c:if>
				
				<c:if test="${!empty review.reviewContent9 }">
					<tr>
						<td>
						<textarea id="txtarea" name="content9" cols="80" rows="10">${review.reviewContent9 }</textarea>
						</td>
					</tr>
				</c:if>
				
				</tbody>
        </table>
    </form>
    <script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$("#listview").on("click", function() {
			location.href = "/free?page=1";
		});
	
		var i=1;
		if('${!empty review.reviewContent0}'=='true'){
			i=1;	
			}
		if('${!empty review.reviewContent1}'=='true'){
			i=2;	
			}
		if('${!empty review.reviewContent2}'=='true'){
			i=3;	
			}
		if('${!empty review.reviewContent3}'=='true'){
			i=4;	
			}
		if('${!empty review.reviewContent4}'=='true'){
			i=5;	
			}
		if('${!empty review.reviewContent5}'=='true'){
			i=6;	
			}
		if('${!empty review.reviewContent6}'=='true'){
			i=7;	
			}
		if('${!empty review.reviewContent7}'=='true'){
			i=8;	
			}
		if('${!empty review.reviewContent8}'=='true'){
			i=9;	
			}
		
		
		
		
		$("#addBtn").on("click",function(){
			
			 $('#mytable > tbody:last').append(
						 "<tr><td>"
						+"<textarea id='txtarea' name='content"+i+"' cols='80' rows='10'></textarea>"
						+"</td></tr>");
			 i++;
			 console.log('증가된 값 :'+i);
			 if(i==10){
					alert('최대 10개까지 칸 확장이 가능합니다');
					$("#addBtn").attr("onclick","").unbind("click");
				}
		});
		$("#subBtn").on("click",function(){
			$('#mytable > tbody:last > tr:last').remove();
			i--;
			$("#addBtn").attr("onclick","").unbind("click");
			$("#addBtn").on("click",function(){
				
				 $('#mytable > tbody:last').append(
							 "<tr><td>"
							+"<textarea id='txtarea' name='content"+i+"' cols='80' rows='10'></textarea>"
							+"</td></tr>");
				 i++;
				 console.log('증가된 값 :'+i);
				 if(i==10){
						alert('최대 10개까지 칸 확장이 가능합니다');
						$("#addBtn").attr("onclick","").unbind("click");
					}
			});
		});
		
		
	</script>
</body>
</html>