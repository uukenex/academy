<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- d -->

	<div class="3u 12u(mobile)">
	
		<!-- Left Board Menu -->
		<section class="boardSection">
			<h2>게 시 판</h2>
			<ul class="link-list">
				<c:url value="/notice?page=1" var="notice"></c:url>
				<li><a href="${notice }">공지사항</a></li>
				<c:url value="/qna?page=1" var="qna" />
				<li><a href="${qna }">Q & A</a></li>
				<c:url value="free?page=1" var="free"/>
				<li><a href="${free }">자유 게시판</a></li>
				<li><a href="#">사이트 이용방법</a></li>
			</ul>
		</section>
	</div>