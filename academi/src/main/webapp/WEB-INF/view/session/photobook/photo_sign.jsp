<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#frm label {
  display: inline-block;
  padding: .5em .75em;
  color: #fff;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #2e6da4;
  cursor: pointer;
  border: 1px solid #2e6da4;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}

 #frm input[type="file"],#frm input[type="button"] {  /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
} 

img[id^=chk]{
position: relative;
	left: -50px; /* -이미지의 크기 x 갯수 */
	top:-175px; /* -(버튼의크기-이미지의크기) */
}
a[id^=down]{
position: relative;
	left: -50px; /* -이미지의 크기 x 갯수  */
	top:-175px; /* -(버튼의크기-이미지의크기) */
}
.outer {
position: relative;
width: 250px; /* 너비 설정*/
height: 200px; /* 높이 설정*/
display: inline-block;
}
.bottomleft {
position: absolute;
bottom: 0;
left: 0.5em;
width: 200px;
text-align : center;
font-weight: bold;
color: #000;
display: inline;
}
.folderInline{
display: inline-block;
z-index: 1;
}
</style>
</head>
<body>

<!-- Drop Menu Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp" />
				
				
<div style="height: 5em;"></div>
${users.userNick }의 포토북
	<c:url value="/photo" var="photo" />
	<form id="frm">
    <p>
        <br />
        <input type="file" accept="image/*" id="fileLoader" multiple="multiple" />
        <label for="fileLoader" >사진 올리기</label>
        
        <input type="text" id="cntFiles" />
		<input type="button" id="fileSubmit" value="Upload"/>
		<label for="fileSubmit">저장</label>
		<input type="button" id="newFolder" value="새폴더"/>
		<label for="newFolder">새폴더</label>
    </p>
    </form>
    <output id="result"></output>

</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.mousewheel-3.0.6.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-buttons.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-thumbs.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-media.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox.css" media="screen" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox-buttons.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox-thumbs.css" />
<script>




//팬시박스
$(document).ready(function() {
	$(".fancybox").fancybox({
		closeEffect	: 'elastic',
    	helpers : {
    		title : {
    			type : 'inside'
    		}
    	}
	});
	
});

var files = [];
//interval은 디비에서 마지막숫자를 가져와서 바꿔줘야함
var interval=0;




//등록중 처리
$(document).on("change","#fileLoader",function(event) {
                 files=event.target.files;
                $("#cntFiles").val(files.length+"개 등록중");
                });

//사진등록 ajax
$(document).on("click","#fileSubmit",function() {
                processUpload();
                $("#cntFiles").val("등록완료");
                });
                
//삭제처리
$(document).on("click",".close",function() {
	if(confirm('정말 삭제하시겠습니까?')==true)
		{
		//글씨나 div를 넣어주는경우 한번씩 더실행할것
		this.previousSibling.remove();
		this.previousSibling.remove();
		this.remove();
		}
	else{
		return;
		}
    });





function processUpload()
{
    var oMyForm = new FormData();
    for(var i=0;i<files.length;i++){
    	oMyForm.append("file", files[i]);
   		}
    oMyForm.append("userId",'<%=request.getParameter("userId")%>');
    oMyForm.append("folderName",'<%=request.getParameter("folderName")%>');
    	
   $.ajax({
	   dataType : 'json',
       url : "${photo}",
       data :oMyForm,
       type : "POST",
       enctype: 'multipart/form-data',
       processData: false, 
       contentType:false,
       success : function(result) {
       	  console.log(result);
       	  var html="";
       	  $(result[0]).each(function(idx,item){
       		  html+='<a class="fancybox" rel="gallery1" href=/photo_upload/${users.userId }/<%=request.getParameter("folderName")%>/';
       		  html+=item;
       		  html+=" id='img"+interval+"' ";
       		  html+=">";
       		  html+='<img src=/photo_upload/${users.userId }/<%=request.getParameter("folderName")%>/';
       		  html+=item;
       		  html+=" width='200px' height='200px' >";
       		  html+="</a>";
       		  //다운로드 이미지버튼
       		  html+='<a href=/photo_upload/${users.userId }/<%=request.getParameter("folderName")%>/'+item;
       		  html+=" download id='down"+interval+"' ><img id='down"+interval;
       		  html+="' src='/images/down.png'";
       		  html+="height='25px' width='25px' class='down ' >";
       		  html+="</a>";
       		  //삭제 이미지버튼
       		  html+="<img id='chk"+interval;
       		  html+="' src='/images/delete.png'";
       		  html+="height='25px' width='25px' class='close '>";
        		  
       		  interval++;
        	  });
       	  	$("#result")[0].innerHTML+=html;
        	  
          },
          error : function(result){
        	  console.log('실패');
        	  console.log(result);
          }
      });
}



<c:url value="/newfolder" var="newfolder" />
$("#newFolder").on("click",function(){
	
	var conf = prompt("새폴더 이름을 만들어주세요");
	
	$.ajax({
		type:"post",
		url:"${newfolder}",
		data:{
			userId:'${users.userId }',
			name:conf
		},
		success:function(res){
			if(res==true){
				var html="";
				html+="<div class='outer'>";
				html+="<img src=/images/newFolder2.png class='folderInline'";
				html+=" width='200px' height='200px' >";
				html+="<div class='bottomleft'><p style='text-align: center'>";
				html+=conf;
				html+="  </p></div><div>";
				$("#result")[0].innerHTML+=html;
			}
			else{
				console.log('실패');
			}
		}
		,
		error:function(xhr,status,error){
			alert(error);
		}
	});
		
});

<c:url value="/loadfolder" var="loadfolder" />


	
$(document).on("ready",function(){
	var folderName="";
	$(document).on("dblclick",".folderInline",function(event) {
		
		folderName = event.currentTarget.nextSibling.innerText;
			location.href="/session/myPhoto?userId=${users.userId }&folderName="+folderName;
		   });
	
	$.ajax({
		type:"post",
		url:"${loadfolder}",
		data:{
			userId:'<%=request.getParameter("userId")%>',
			folderName:'<%=request.getParameter("folderName")%>'
		},
		success:function(res){
			console.log(res);
			//폴더목록가져옴
			
			$(res[1]).each(function(idx,item){
				var html="";
				html+="<div class='outer'>";
				html+="<img src=/images/newFolder2.png class='folderInline'";
				html+=" width='200px' height='200px' >";
				html+="<div class='bottomleft'><p style='text-align: center'>";
				html+=item;
				html+="  </p></div><div>";
				$("#result")[0].innerHTML+=html;
				
				
				
				
				});
			
				var html="";
			//파일목록 받아옴
	       	  $(res[0]).each(function(idx,item){
	       		  html+="<a class='fancybox' rel='gallery1' href=/photo_upload/${users.userId }/<%=request.getParameter("folderName")%>/";
	       		  html+=item;
	       		  html+=" id='img"+interval+"' ";
	       		  html+=">";
	       		  html+="<img src=/photo_upload/${users.userId }/<%=request.getParameter("folderName")%>/";
	       		  html+=item;
	       		  html+=" width='200px' height='200px' >";
	       		  html+="</a>";
	       		  //다운로드 이미지버튼
	       		  html+="<a href=/photo_upload/${users.userId }/<%=request.getParameter("folderName")%>/"+item;
	       		  html+=" download id='down"+interval+"' ><img id='down"+interval;
	       		  html+="' src='/images/down.png'";
	       		  html+="height='25px' width='25px' class='down ' >";
	       		  html+="</a>";
	       		  //삭제 이미지버튼
	       		  html+="<img id='chk"+interval;
	       		  html+="' src='/images/delete.png'";
	       		  html+="height='25px' width='25px' class='close '>";
	        		  
	       		  interval++;
	        	  });
	       	  	$("#result")[0].innerHTML+=html;
			
		},
		error:function(xhr,status,error){
			alert(error);
		}
	});
	

});


</script>

</html>