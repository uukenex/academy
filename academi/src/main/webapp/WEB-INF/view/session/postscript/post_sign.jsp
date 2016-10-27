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
<style>

td{
display: inline-block;
}
.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #fff;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #337ab7;
  cursor: pointer;
  border: 1px solid #2e6da4;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}

.filebox input[type="file"] {  /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}
</style>
</head>
<body>
<c:url value="/postWrite" var="postWrite" ></c:url>
<form class="filebox" method="post" enctype="multipart/form-data" action="${postWrite}">
	<div style="width: 600px;">
		<div style="float: right;">
			<h3>현재 접속 Nick : "${Users.userNick }"</h3>
			
			<input type="hidden" id="routeNo" name="routeNo" value="92" />
				<table border="1" id="mytable">
					<tr>
						<td>제목</td>
						<td>
						<input name="title" type="text" size="50">
						</td>
					</tr>
					<tr>
						<td><input type="button" value="경로 새로만들기"></td>
						<td><input type="button" value="등록한 경로 가져오기"></td>
						<td><input type="button" id="addBtn" value="+">
						<input type="button" id="subBtn" value="-">
						<input type="submit" name="Submit" formaction="/postWrite"
						 formmethod="post" value="쓰기"> 
						<input type="button" name="Submit2" value="취소" 
						onclick="history.back();"></td>
					</tr>
					<tr style="height: 8em;">
					<td  style="height: 8em;">경로 api가 들어갈부분</td>
					</tr>
					<tbody>
					<tr>
						<td>
						<textarea id="txtarea" name="content0" cols="80" rows="10"></textarea>
						</td>
					</tr>
					<tr>
					</tbody>
					
				</table>
		</div>
	</div>
	
	
	
	
	<p>
        <label for="image">사진 추가</label>
        <br />
        <input type="file" accept="image/*" name="uploadFile" id="image" multiple />
        <!-- <input type="submit" id="submit" value="upload"> -->
    </p>
    
    <div id="image_preview">
       
        <a id="remove" href="#">Remove</a>
    </div>
    </form>
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
	console.log($("#image"));
	var i=1;
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
			if(i<0){
			i=0;
			}
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
	
	
	
	
	
	
	
	
	
	
	//------------------------사진 폼 ----------------//

	var imgArr=0;
	$('#image').on('change', function() {
	    
	    ext = $(this).val().split('.').pop().toLowerCase(); //확장자
	    
	    //배열에 추출한 확장자가 존재하는지 체크
	    if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
	        resetFormElement($(this)); //폼 초기화
	        window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
	    } else {
	    	var files = $('#image').prop("files");
	    	for(var j=0;j<files.length;j++){
	    		$('div').append("<img id=img"+imgArr+" />");
	        	file = $('#image').prop("files")[j];
	        	blobURL = window.URL.createObjectURL(file);
	        	$("#img"+imgArr).attr('src', blobURL);
	            $("#img"+imgArr).attr('height', 200);
	            $("#img"+imgArr).attr('width', 200);
	                			
	            $('#image_preview').slideDown(); //업로드한 이미지 미리보기
	            imgArr++;
	            console.log(imgArr+"번째 : 다시돌아가지않아야함");
	    	}
	    }
	});
	$(document).on("ready",function(){
		$("#remove").on("click",function(){
			$("img[id^=img]").remove();
		});
	});
	
	//------------------------사진 폼 끝------------//
	
	</script>
</body>
</html>