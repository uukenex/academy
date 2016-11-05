<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>

</head>
<body>
<c:url value="/reviewUpdate" var="update"></c:url>
<form id="frm" method="post" action="${update }">
        
           
                
                 <input type="hidden" name="reviewNo" value="${review.reviewNo }" />
                 <input type="hidden" name="routeNo" value="${review.routeNo }" />
                    
				<label for="IDX" >작성자</label>
                    
                        <input type="hidden" id="IDX" name="IDX" value="">
                        ${review.users.userNick}
                    
              <label >등록일</label>
                    <fmt:formatDate value="${review.reviewDate}"
						pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}
                
              <label for="title" >제목</label>
                        <input type="text" id="TITLE" name="title" class="wdp_90" value="${review.reviewTitle}"/>
                
                
                	<input type="button" id="addBtn" value="+">
					<input type="button" id="subBtn" value="-">
                 	<input type="button" id="listview" value="목록으로">
                 	<c:url value="/reviewDelete" var="delete"></c:url>
                 	
    			 	<input type="submit" formaction="${delete }" formmethod="post" value="삭제하기">
    			 	<input type="button" id="savebutton"  value="저장하기">
                
            		<div id="none0">
						<textarea id="txtcontent0" name="content0" cols="80" rows="10">${review.reviewContent0 }</textarea>
					</div>
				
				<div id="none1">
						<textarea id="txtcontent1" name="content1" cols="80" rows="10">${review.reviewContent1 }</textarea>
					</div>
				
				
				<div id="none2">
						<textarea id="txtcontent2" name="content2" cols="80" rows="10">${review.reviewContent2 }</textarea>
					</div>
				
				
				<div id="none3">
						<textarea id="txtcontent3" name="content3" cols="80" rows="10">${review.reviewContent3 }</textarea>
					</div>
				<div id="none4">
						<textarea id="txtcontent4" name="content4" cols="80" rows="10">${review.reviewContent4 }</textarea>
					</div>
				<div id="none5">
						<textarea id="txtcontent5" name="content5" cols="80" rows="10">${review.reviewContent5 }</textarea>
					</div>
				<div id="none6">
						<textarea id="txtcontent6" name="content6" cols="80" rows="10">${review.reviewContent6 }</textarea>
					</div>
				<div id="none7">
						<textarea id="txtcontent7" name="content7" cols="80" rows="10">${review.reviewContent7 }</textarea>
					</div>
				<div id="none8">
						<textarea id="txtcontent8" name="content8" cols="80" rows="10">${review.reviewContent8 }</textarea>
					</div>
				<div id="none9">
						<textarea id="txtcontent9" name="content9" cols="80" rows="10">${review.reviewContent9 }</textarea>
					</div>
				
				
    </form>
    <script src="http://code.jquery.com/jquery.js"></script>
	<script>
	wrapWindowByMask();
		$("#listview").on("click", function() {
			location.href = "/free?page=1";
		});
	
		var i=1;
		
	
		$("div[id^=none]").css("display","none");
			if('${!empty review.reviewContent8}'=='true'){
				i=9;
					for(var tempNum=0;tempNum<i;tempNum++){
					$("#none"+tempNum).css("display","block");
					}
				}
			else if('${!empty review.reviewContent7}'=='true'){
				i=8;	
					for(var tempNum=0;tempNum<i;tempNum++){
					$("#none"+tempNum).css("display","block");
					}
				}
			else if('${!empty review.reviewContent6}'=='true'){
				i=7;	
					for(var tempNum=0;tempNum<i;tempNum++){
					$("#none"+tempNum).css("display","block");
					}
				}
			else if('${!empty review.reviewContent5}'=='true'){
				i=6;	
					for(var tempNum=0;tempNum<i;tempNum++){
					$("#none"+tempNum).css("display","block");
					}
				}
			else if('${!empty review.reviewContent4}'=='true'){
				i=5;	
					for(var tempNum=0;tempNum<i;tempNum++){
					$("#none"+tempNum).css("display","block");
					}
				}
			else if('${!empty review.reviewContent3}'=='true'){
				i=4;	
					for(var tempNum=0;tempNum<i;tempNum++){
					$("#none"+tempNum).css("display","block");
					}
				}
			else if('${!empty review.reviewContent2}'=='true'){
				i=3;	
					for(var tempNum=0;tempNum<i;tempNum++){
					$("#none"+tempNum).css("display","block");
					}
				}
			else if('${!empty review.reviewContent1}'=='true'){
				i=2;	
					for(var tempNum=0;tempNum<i;tempNum++){
					$("#none"+tempNum).css("display","block");
					}
				}
			else if('${!empty review.reviewContent0}'=='true'){
				i=1;	
					for(var tempNum=0;tempNum<i;tempNum++){
					$("#none"+tempNum).css("display","block");
					}
				}
		
		
		
		
		
		
		
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
		
	
		 function wrapWindowByMask() {
		        //화면의 높이와 너비를 구한다.
		        var maskHeight = $(document).height();  
//		      var maskWidth = $(document).width();
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
		        
		        setTimeout("closeWindowByMask()", 3000);
		    }
		 
		 function closeWindowByMask() {
		        $('#mask, #loadingImg').hide();
		        $('#mask, #loadingImg').remove();   
		    }

	</script>
</body>
</html>