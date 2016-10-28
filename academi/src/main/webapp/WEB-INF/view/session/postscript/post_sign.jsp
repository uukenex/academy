<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<!DOCTYPE>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
<meta name="author" content="Nathan Searles">
  		
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
	
<title>Insert title here</title>
<style>
body{
background: gray;
}
.boardEditorTable{
background: yellow;
}
/* td{
display: inline-block;
}
 .filebox label,#remove {
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

.filebox input[type="file"] {   파일 필드 숨기기 
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0; 
}  */
</style>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>



 <c:url value="/postWrite" var="postWrite" ></c:url>

		<form id="frm" action="${postWrite }" method="post">
			<input type="hidden" id="routeNo" name="routeNo" value="92" />
				<table border="1" id="mytable" class="boardEditorTable">
					<tr>
						<td>제목</td>
						<td>
						<input name="title" type="text" size="50">
						</td>
						</tr>
					<tr>
						<td><input type="button" value="경로 새로만들기" onclick="window.open('/session/newMap', 'win1',
							'width=550, height=700');" onkeypress="this.onclick()" ></td>
						<td><input type="button" value="등록한 경로 가져오기" onclick="window.open('/session/existMap', 'win1',
							'width=550, height=700');" onkeypress="this.onclick()"></td>
						<td>
						<input type="button" id="addBtn" value="+">
						<input type="button" id="subBtn" value="-">
						<input type="button" name="Submit" value="쓰기" id="savebutton"> 
						<input type="button" name="Submit2" value="취소" 
						onclick="history.back();"></td>
					</tr>
					<tr style="height: 8em;">
					<td  style="height: 8em;">경로 api가 들어갈부분</td>
					</tr>
					
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content0" id="txtcontent0"  ></textarea>
						</td>
					</tr>
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content1" id="txtcontent1"  ></textarea>
						</td>
					</tr>
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content2" id="txtcontent2"  ></textarea>
						</td>
					</tr>
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content3" id="txtcontent3"  ></textarea>
						</td>
					</tr>
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content4" id="txtcontent4"  ></textarea>
						</td>
					</tr>
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content5" id="txtcontent5"  ></textarea>
						</td>
					</tr>
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content6" id="txtcontent6"  ></textarea>
						</td>
					</tr>
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content7" id="txtcontent7"  ></textarea>
						</td>
					</tr>
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content8" id="txtcontent8"  ></textarea>
						</td>
					</tr>
					<tr>
						<td>
						<textarea class="editorContentWritter" name="content9" id="txtcontent9"  ></textarea>
						</td>
					</tr>
			
					
				</table>
				
	
	</form>
	
	
	
	
	
	
	
	
	<jsp:include page="../../nonsession/layout/footer.jsp" />
		
	
	
	
	
	
	
	
	



	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
	var i=1;
	$("#addBtn").on("click",function(){
		 $('#mytable > tbody:last').append(
					 "<tr><td>"
					+"<textarea id='txtcontent"+i+"' name='content"+i+"' cols='80' rows='10'></textarea>"
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
						+"<textarea id='txtcontent"+i+"' name='content"+i+"' cols='80' rows='10'></textarea>"
						+"</td></tr>");
			 i++;
			 console.log('증가된 값 :'+i);
			 if(i==10){
					alert('최대 10개까지 칸 확장이 가능합니다');
					$("#addBtn").attr("onclick","").unbind("click");
				}
		});
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	//네이버 사진폼 
	//전역변수선언
		    var editor_object0 = [];
		    var editor_object1 = [];
		    var editor_object2 = [];
		    var editor_object3 = [];
		    var editor_object4 = [];
		    var editor_object5 = [];
		    var editor_object6 = [];
		    var editor_object7 = [];
		    var editor_object8 = [];
		    var editor_object9 = [];
		$(function(){
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object0,
		        elPlaceHolder: "txtcontent0",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object1,
		        elPlaceHolder: "txtcontent1",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object2,
		        elPlaceHolder: "txtcontent2",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object3,
		        elPlaceHolder: "txtcontent3",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object4,
		        elPlaceHolder: "txtcontent4",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object5,
		        elPlaceHolder: "txtcontent5",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object6,
		        elPlaceHolder: "txtcontent6",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object7,
		        elPlaceHolder: "txtcontent7",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object8,
		        elPlaceHolder: "txtcontent8",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: editor_object9,
		        elPlaceHolder: "txtcontent9",
		        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,             
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,     
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true, 
		        }
		    });
		    
		    
		    
		    
		  //전송버튼 클릭이벤트
		    $("#savebutton").click(function(){
		        //id가 content인 textarea에 에디터에서 대입
		        console.log(editor_object0);
		        console.log(editor_object0.getById["content"]);
		        editor_object0.getById["txtcontent0"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        editor_object1.getById["txtcontent1"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        editor_object2.getById["txtcontent2"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        editor_object3.getById["txtcontent3"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        editor_object4.getById["txtcontent4"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        editor_object5.getById["txtcontent5"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        editor_object6.getById["txtcontent6"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        editor_object7.getById["txtcontent7"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        editor_object8.getById["txtcontent8"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        editor_object9.getById["txtcontent9"].exec("UPDATE_CONTENTS_FIELD", [""]);
		        
		        //폼 submit
		        $("#frm").submit();
		    })
		    
		    
			});
		
	
		
	
	
	
	//버튼 클릭시 페이지 열기 함수

	</script>
</body>
</html>