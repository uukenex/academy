<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Nav -->

<nav id="nav">
	<ul>
		<c:url value="/mainpage" var="mainpage"/>
		<li><a href="${mainpage }">Home</a></li>
		
		<li><a href="left-sidebar.html">지도 만들기</a></li>
		
		<li><a href="right-sidebar.html">후기 등록</a></li>
		
		<li><a href="no-sidebar.html">Photo Book</a></li>
		
		<li><a href="#">Board</a>
			<ul>
				<li><a href="#">Lorem ipsum dolor</a></li>
				<li><a href="#">Magna phasellus</a></li>
				<li><a href="#">Etiam dolore nisl</a></li>
				<li><a href="#">And a submenu &hellip;</a>
					<ul>
						<li><a href="#">Lorem ipsum dolor</a></li>
						<li><a href="#">Phasellus consequat</a></li>
						<li><a href="#">Magna phasellus</a></li>
						<li><a href="#">Etiam dolore nisl</a></li>
					</ul></li>
				<li><a href="#">Veroeros feugiat</a></li>
			</ul></li>
	</ul>
</nav>