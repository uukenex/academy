<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<style>
a:link, a:visited {
	text-decoration: none;
	color: #656565;
}

.board_list {
	width: 100%;
	border-top: 2px solid #252525;
	border-bottom: 1px solid #ccc
}

.board_list thead th:first-child {
	background-image: none
}

.board_list thead th {
	border-bottom: 1px solid #ccc;
	padding: 12px 0 13px 0;
	color: #3b3a3a;
	vertical-align: middle
}

.board_list tbody td {
	border-top: 1px solid #ccc;
	padding: 10px 0;
	text-align: center;
	vertical-align: middle
}

.board_list tbody tr:first-child td {
	border: none
}

.board_list tbody td.title {
	text-align: left;
	padding-left: 20px
}

.board_list tbody td a {
	display: inline-block
}

.btn {
	border-radius: 3px;
	padding: 5px 11px;
	color: #fff !important;
	display: inline-block;
	background-color: #6b9ab8;
	border: 1px solid #56819d;
	vertical-align: middle
}
</style>
<title>first</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<body>
	<a href="index.jsp">임시홈으로</a>
	<h2 align="center">자유 게시판</h2>
	<h3>현재 접속 Nick : "${Users.userNick }"</h3>
	<form action="/session/boardsign">
		<table style="border: 1px solid #ccc" class="board_list">
			<colgroup>
				<col width="15%" />
				<col width="*" />
				<col width="20%" />
				<col width="10%" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
		
				<c:forEach var="comment" items="${comments }">
					<tr>
						<td><a href="freeView?commentNo=${comment.commentNo} ">${comment.commentName }</a></td>
						<td>${comment.users.userNick}</td>
						<td><fmt:formatDate value="${comment.commentDate }"
								pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate }</td>
						<td>${comment.commentCount }</td>
					</tr>
				</c:forEach>
				<c:if test="${totalPage ==0}">
					<td colspan="4">조회된 결과가 없습니다.</td>
				</c:if>
				
				
			</tbody >
			
				<tfoot align="center">

				<tr>
				
					<td colspan="4"><input type="submit" value="글쓰기" class="btn"></td>
				</tr>
				</tfoot>
		</table>

	</form>
	<%!int i;%>
	<%
		for (int i = 1; i <= Integer.parseInt(request.getAttribute(("totalPage")).toString()); i++) {
	%>
	<a href="/free?page=<%=i%>"><%=i%> </a>
	<%
		}
	%>
	<div></div>
	<select id="searchCategory">
		<option value="제목">제목</option>
		<option value="내용">내용</option>
		<option value="닉네임">닉네임</option>
	</select>
	<input type="search" id="search" />
	<input type="button" id="searchBtn" value="검색" />

	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$(document).on("ready", function() {
			if ("${message}" != null && "${message}" != ("")) {
				alert("${message}");
	<%session.removeAttribute("message");%>
		}
		})
		
		
		<c:url value="/search" var="search" />
		$("#searchBtn").on("click",function(){
			$.ajax({
			type:"post",
			url:"${search}",
			data:{
				category:$("#searchCategory").val(),
				keyword:$("#search").val()
			},
			success:function(res){
				$("tbody")[0].innerHTML="";
				$(res).each(function(idx,item){
				//item이 comment객체(user정보도 포함)
				console.log(item);
				console.log(item.commentDate);
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
		"<tr>"
		+"<td><a href='freeView?commentNo="+item.commentNo+"' >"+item.commentName +" </a></td>"
		+"<td>"+item.users.userNick+"</td>"
		+"<td>"+newDate+"</td>"
		+"<td>"+item.commentCount +"</td>"
		+"</tr>"
				});
			},
			error:function(xhr,status,error){
				alert(error);
			}
			}); 
		});
	</script>
</body>
</html>


