<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	$(document).on("ready",function(){
	//userid�� �����̸�	
		if("${Users.userId}" == ""){
			//�α���â�� ����ش�
		window.open('/login', 'win1','width=550, height=480');
		console.log("�α�������");
		//userid�� �����ϸ� �������� �������� �Ѱ��ش�
		}else{
			location.href="<%=session.getAttribute("forPage")%>";
		}
	})
</script>
</html>