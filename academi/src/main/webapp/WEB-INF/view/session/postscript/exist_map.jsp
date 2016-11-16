<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
  
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/post_script.css" />
<title>내 경로 선택하기</title>

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

<body onload="bonload()">
	<div id="myroute_import_title">
	
		 <h1>경로 불러오는 페이지</h1>
		 
		 <form name="form">
			 <select name="routeNo" onChange="getSelectValue(this.form)">
			 	<option value="#">============선택하세요=============</option>
			 	<c:forEach var="existMap" items="${existMap }">
			 	<option value="${existMap.routeNo }">${existMap.routeName}</option>
			 	</c:forEach>
			 </select>
			 	  <input type="hidden" name="optionValue" id="optionValue">
			 	  <input type="hidden" name="textValue" name="textValue">
				  
				  <input type="button" value="미리보기" id="preview">
		 </form>
		 
		 <iframe frameborder="no" width="400px" height="485px" id="frame" name="frame"></iframe>
		 <input type="button" value="확인" onclick="bsubmit()">
		 <input type="button" value="취소" id="cancel"onclick="close()">
		 
	 </div>
</body>


<script src="http://code.jquery.com/jquery.js"></script>
<script>

	var routeNo = $("#optionValue").val();
	console.log(routeNo);
	function bonload(){
		document.form.optionValue.focus();
	}	
	$("#cancel").on("click",function(){
		window.close();
	})
	
/* 	$("#preview").on("click",function(){
		window.open("/route?routeNo="+$("#optionValue").val());
	})
	 */

	 
	function bsubmit(){
		if  (document.form.optionValue.value != ""){
		btext = document.form.optionValue.value;
		dtext = document.form.textValue.value;
		window.opener.atext(btext);
		window.opener.ctext(dtext);
		window.close();
		}else
		document.form.optionValue.focus();
	}
	
	function open_in_frame(url) {
		$('#frame').attr('src', url);
	}
	
	$("#preview").on("click",function(){
		
		var routeNumber = $("#optionValue").val();
		var data={"routeNumber":routeNumber};
		$.ajax({
			type:"get",
			data: data,
			url: "/previewRoute",
			success:function(res){
				open_in_frame("/route?routeNo="+res);
			},
			error:function(xhr,status,error){
				alert("code:"+xhr.status+"에러");
			}
		})
	})
	 
	 

</script>
</html>