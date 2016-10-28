<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form class="filebox" method="post" enctype="multipart/form-data"
		action="${postWrite}">
		<div style="width: 600px;">
			<div style="float: right;">
				<h3>현재 접속 Nick : "${Users.userNick }"</h3>

				<p>
					<label for="image">사진 추가</label> <a id="remove" href="#">전체 지우기</a>
					<br /> <input type="file" accept="image/*" name="uploadFile"
						id="image" multiple />

				</p>

				<div id="image_preview"></div>
			</div>
		</div>
	</form>
</body>

<script src="http://code.jquery.com/jquery.js"></script>
<script>
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
    		$('#image_preview').append("<img id=img"+imgArr+" />");
        	file = $('#image').prop("files")[j];
        	blobURL = window.URL.createObjectURL(file);
        	$("#img"+imgArr).attr('src', blobURL);
            $("#img"+imgArr).attr('height', 200);
            $("#img"+imgArr).attr('width', 200);
            $("#img"+imgArr).on("click", function(){
            	$(this).remove();
            }); 
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
</html>