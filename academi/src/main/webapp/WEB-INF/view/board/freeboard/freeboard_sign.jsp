<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html >
<html>
<head>
<title>자유게시판 글쓰기</title>
</head>
<body>
<div style="width:600px;">
<div style="float:right;">


<table border="1">
 <tr>
  <td>제목</td>
  <td>
   : <input name="title" type="text" size="50">
  </td>
 </tr>
 <tr>
 	<td colspan="2" align="center">toolbox</td>
 </tr>
 <tr align="center">
  <td colspan="2">
   <textarea name="content" cols="80" rows="10"></textarea>
  </td>
 </tr>
 <tr align="right">
  <td colspan="2" >
   <input type="button" name="Submit" value="쓰기" onclick="form_check();">
   <input type="button" name="Submit2" value="취소" onclick="history.back();">
  </td>
 </tr>
</table>
</div>
</div>



</body>
</html>