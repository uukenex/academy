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
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" /> --%>
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css"> --%>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/post_script.css" />
	
<title>후기 글쓰기</title>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>

	<!-- Drop Menu Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp" />


	<!-- Post Write Body part -->
	
		<div id="page-wrapper" class="boardPage-Wrapper">
			<div id="main">
				<div class="container">
					<div class="row main-row">
						
						<div class="1u"></div>
						
						<div class="8u 12u(moblie) important(moblie)">
							<h3 id="post_write_mainH3">여행 후기 작성</h3>
							<c:url value="/postWrite" var="postWrite" ></c:url>
	
								<form id="frm" name="frm" action="${postWrite }" method="post" enctype="multipart/form-data">
									
									<table class="post_write_table">
										<colgroup>
											<col width="20%">
											<col width="*%">
										</colgroup>
										<tr>
											<th><label for="title">제목</label></th>
											<td><input name="title" type="text" id="post_write_title"></td>
										</tr>
										<tr class="routeTitleTr">
											<input type="hidden" id ="routeNumber" name="routeNumber">
											<td colspan="2">
												<input type="text" id ="routeTitle" name="routeTitle" disabled="disabled">
												<input type="button" class="postButtonStyle2" value="내 경로 가져오기" onclick="mapOpen()">
											</td>
										</tr>
										<tr class="routeTitleTr">
											<td colspan="2">
												<input type="file" accept="image/*" name="file" />
												<!-- <input type="text" id="routeTitleImage" name="routeTitleImage" disabled="disabled">
												<input type="button" class="postButtonStyle2" value="메인사진 등록하기" onclick="postMainImageOpen()"> -->
											</td>
										</tr>
										<tr class="write_days_editor">
											<td colspan="2">
												<div id="none0">
													<h4>Day 01</h4>
													<textarea class="editorContentWritter" name="content0" id="txtcontent0"  style="width: 80%; height: 50%"></textarea>
												</div>
												
												<div id="none1">
													<h4>Day 02</h4>
													<textarea class="editorContentWritter" name="content1" id="txtcontent1"  style="width: 80%; height: 50%"></textarea>
													</div>
												<div id="none2">
													<h4>Day 03</h4>
													<textarea class="editorContentWritter" name="content2" id="txtcontent2"  style="width: 80%; height: 50%"></textarea>
												</div>
												<div id="none3">
													<h4>Day 04</h4>
													<textarea class="editorContentWritter" name="content3" id="txtcontent3"  style="width: 80%; height: 50%"></textarea>
												</div>
												<div id="none4">
													<h4>Day 05</h4> 
													<textarea class="editorContentWritter" name="content4" id="txtcontent4" style="width: 80%; height: 50%" ></textarea>
												</div>
												<div id="none5">
													<h4>Day 06</h4>					
													<textarea class="editorContentWritter" name="content5" id="txtcontent5"  style="width: 80%; height: 50%"></textarea>
												</div>
												<div id="none6">
													<h4>Day 07</h4>
													<textarea class="editorContentWritter" name="content6" id="txtcontent6"  style="width: 80%; height: 50%"></textarea>
												</div>
												<div id="none7">
													<h4>Day 08</h4>
													<textarea class="editorContentWritter" name="content7" id="txtcontent7"  style="width: 80%; height: 50%"></textarea>
												</div>
												<div id="none8">
													<h4>Day 09</h4>
													<textarea class="editorContentWritter" name="content8" id="txtcontent8"  style="width: 80%; height: 50%"></textarea>
												</div>
												<div id="none9">
													<h4>Day 10</h4>
													<textarea class="editorContentWritter" name="content9" id="txtcontent9"  style="width: 80%; height: 50%"></textarea>
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<input type="button" name="Submit2" value="취소" 
															onclick="history.back();" class="postButtonStyle2">
												<input type="submit" name="Submit" value="등록" id="savebutton" class="postButtonStyle2"> 
											</td>
										</tr>
									</table>
<!-- 										
											<div>
											
											<input type="button" value="등록한 경로 가져오기" onclick="mapOpen()">
											<input type="button" id="addBtn" value="+">
												<input type="button" id="subBtn" value="-">
												<input type="submit" name="Submit" value="쓰기" id="savebutton"> 
												<input type="button" name="Submit2" value="취소" 
															onclick="history.back();"></div>
												<input type="hidden" id ="routeNumber" name="routeNumber">
												<input type="text" id ="routeTitle" name="routeTitle"  size="84" disabled="disabled">
											
												<div id="none0">
												<textarea class="editorContentWritter" name="content0" id="txtcontent0"  ></textarea>
												</div>
											
												<div id="none1">
												<textarea class="editorContentWritter" name="content1" id="txtcontent1"  ></textarea>
												</div>
												<div id="none2">
												<textarea class="editorContentWritter" name="content2" id="txtcontent2"  ></textarea>
												</div>
												<div id="none3">
												<textarea class="editorContentWritter" name="content3" id="txtcontent3"  ></textarea>
												</div>
												<div id="none4"> 
												<textarea class="editorContentWritter" name="content4" id="txtcontent4"  ></textarea>
												</div>
												<div id="none5">					
												<textarea class="editorContentWritter" name="content5" id="txtcontent5"  ></textarea>
												</div>
												<div id="none6">
												<textarea class="editorContentWritter" name="content6" id="txtcontent6"  ></textarea>
												</div>
												<div id="none7">
												<textarea class="editorContentWritter" name="content7" id="txtcontent7"  ></textarea>
												</div>
												<div id="none8">
												<textarea class="editorContentWritter" name="content8" id="txtcontent8"  ></textarea>
												</div>
												<div id="none9">
												<textarea class="editorContentWritter" name="content9" id="txtcontent9"  ></textarea>
												</div> -->
							</form>
						</div>
						<div class="2u" id="rightFixedTab">
							<i class="fa fa-paw"></i>
							<input type="button" id="addBtn" value="계획 일자 추가">
							<input type="button" id="subBtn" value="계획 일자 삭제">
						</div>
					</div>
						
						<!-- footer -->
							<jsp:include page="../../nonsession/layout/footer.jsp" />
				</div>
			</div>
		</div>
	


	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
	wrapWindowByMask();
	var i=1;
	$("#addBtn").on("click",function(){
		
		$("#none"+i).css("display","block");
		console.log(i+"번째 행 추가");
		i++;
		if(i==10){
				alert('최대 10개까지 칸 확장이 가능합니다');
				$("#addBtn").attr("onclick","").unbind("click");
				}
	});
	$("#subBtn").on("click",function(){
		i--;
		$("#none"+i).css("display","none");
		console.log(i+"번째 행 삭제");
		
		
			if(i<0){
			i=0;
			}
		$("#addBtn").attr("onclick","").unbind("click");
		$("#addBtn").on("click",function(){
			
			$("#none"+i).css("display","block");
			console.log(i+"번째 행 추가");
			i++;
			
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
		
	
		
	$(document).on("ready",function(){
		$("#none1").css("display","block");
		$("#none1").css("display","none");
		$("#none2").css("display","none");
		$("#none3").css("display","none");
		$("#none4").css("display","none");
		$("#none5").css("display","none");
		$("#none6").css("display","none");
		$("#none7").css("display","none");
		$("#none8").css("display","none");
		$("#none9").css("display","none");
		
	});

	
	//버튼 클릭시 페이지 열기 함수

	function mapOpen(){
		window.open("/session/existMap", "", 
				'width=540px, height=900px, resizable=0, scrollbars=0');
		console.log("창 열린다");
		return true;
	}
	
	function atext(btext){
		document.frm.routeNumber.value=btext;
		console.log("b의 값 들어왔음");
		return true;
	}

	function ctext(dtext){
		document.frm.routeTitle.value=dtext;
		console.log("d의 값 들어왔음");
		return true;
	} 
	
/* 	
	
	$("#commitButton").on("click",function(){
	
		var routeNumber = $("#routeNumber").val();
		var routeTitle = $("#routeTitle").val();
		var data={"routeNumber":routeNumber,"routeTitle":routeTitle};
		$.ajax({
			type:"get",
			data: data,
			url: "/insertRoute",
			success:function(res){
				alert("성공");
			},
			error:function(xhr,status,error){
				alert("code:"+xhr.status+"에러");
			}
		})
	})
	 */
	
	 function wrapWindowByMask() {
	        //화면의 높이와 너비를 구한다.
	        var maskHeight = $(document).height();  
//	      var maskWidth = $(document).width();
	        var maskWidth = window.document.body.clientWidth;
	         
	        var mask = "<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
	        var loadingImg = '';
	         
	        loadingImg += "<div id='loadingImg' style='position:absolute; left:50%; top:40%; display:none; z-index:10000;'>";
	        loadingImg += " <img src='/images/viewLoading.gif'/>"; 
	        loadingImg += "</div>";   
	     
	        //화면에 레이어 추가 
	        $('body')
	            .append(mask)
	            .append(loadingImg)
	           
	        //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	        $('#mask').css({
	                'width' : maskWidth
	                , 'height': maskHeight
	                , 'opacity' : '0.3'
	        });  
	     
	        //마스크 표시
	        $('#mask').show();    
	     
	        //로딩중 이미지 표시
	        $('#loadingImg').show();
	        
	        setTimeout("closeWindowByMask()", 1500);
	    }
	 
	 function closeWindowByMask() {
	        $('#mask, #loadingImg').hide();
	        $('#mask, #loadingImg').remove();   
	    }
	 
	</script>
</body>
</html>