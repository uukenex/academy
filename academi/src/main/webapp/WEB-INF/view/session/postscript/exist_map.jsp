<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
  
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script language="javascript">
<!--
function getSelectValue(frm)
{
	frm.textValue.value = frm.routeNo.options[frm.routeNo.selectedIndex].text;
 	frm.optionValue.value = frm.routeNo.options[frm.routeNo.selectedIndex].value;
}
//-->
</script>
</head>
<body>
 <h1>경로 불러오는 페이지</h1>
 <form name="form">
 <select name="routeNo" onChange="getSelectValue(this.form)">
 	<option value="#">============선택하세요=============</option>
 	<c:forEach var="existMap" items="${existMap }">
 	<option value="${existMap.routeNo }">${existMap.routeName}</option>
 	</c:forEach>
 </select>
 	  <input type="text" name="optionValue" >
 	   <input type="text" name="textValue">
	  <input type="button" value="확인" id="close">
 </form>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	
	$("#close").on("click",function(){
		btext = document.form.optionValue.value;
		window.opener.atext(btext);
		window.close();
	})

</script>
</html>