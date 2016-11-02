<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<HTML>
<HEAD>
	<TITLE> Opener Test </TITLE>
	<script language="javascript">
	function textinput()
	{
		window.open('view.jsp', '', 'width=400, height=300, resizable=0, scrollbars=0' );
		return true;	
	}
	function atext(btext)
	{
		document.aa.a.value = btext; 		
		return true;
	}
	</script>
</HEAD>
<BODY>
<form name="aa">
	<input type="text" name="a" value="" readonly onclick="textinput()">
</form>
</BODY>
</HTML>