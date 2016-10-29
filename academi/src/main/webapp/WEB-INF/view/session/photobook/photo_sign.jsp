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

</style>
</head>
<body>

	<c:url value="/photo" var="photo" />
	<form id="frm">
    <p>
        <br />
        <input type="file" accept="image" id="fileLoader" multiple="multiple" />
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
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox.css" media="screen" />
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox-buttons.css" />
			<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-buttons.js"></script>
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox-thumbs.css" />
			<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-thumbs.js"></script>
			<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-media.js"></script>
  			
<script>
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
var interval=0;
$(document).on("change","#fileLoader",function(event) {
                 files=event.target.files;
                $("#cntFiles").val(files.length+"개 등록중");
                });

$(document).on("click","#fileSubmit",function() {
                processUpload();
                });

function processUpload()
{
    var oMyForm = new FormData();
    for(var i=0;i<files.length;i++){
    	oMyForm.append("file", files[i]);	
   		}
    	
   $.ajax({dataType : 'json',
          url : "${photo}",
          data : oMyForm,
          type : "POST",
          enctype: 'multipart/form-data',
          processData: false, 
          contentType:false,
          success : function(result) {
        	  console.log(result);
        	  var html="";
        	  $(result[0]).each(function(idx,item){
        		  console.log(item);
        		  
        		  html+="<a class='fancybox' rel='gallery1' href=/photo_upload/";
        		  html+=item;
        		  html+=" id='img"+interval+"' ";
        		  html+=">";
        		  html+="<img src=/photo_upload/";
        		  html+=item;
        		  html+=" width='200px' height='200px'></a>";
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
$("#newFolder").on("click",function(){
	
	var html="";
		  /* html+="<a href=/mvc_day4_ajax/upload/";
		  html+=$("#newFolder").val();
		  html+=" id=img" ";
		  html+=">"; */
		  html+="<img src=/images/";
		  html+="newFolder2.png";
		  html+=" width='200px' height='200px'></a>";
	$("#result")[0].innerHTML+=html;
});

</script>

</html>