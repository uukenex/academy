<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<title>sample2</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("ul.panel li:not(" + $("ul.tab li a.selected").attr("href") + ")")
				.hide();
		$("ul.tab li a").click(function() {
			$("ul.tab li a").removeClass("selected");
			$(this).addClass("selected");
			$("ul.panel li").slideUp("fast");
			$($(this).attr("href")).slideDown("fast");
			return false;
		});
	});
</script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#container {
	width: 90%;
	margin: 50px auto;
}

ul.tab {
	padding: 0;
}

ul.tab li {
	list-style-type: none;
	width: 100px;
	height: 40px;
	float: left;
}

ul.tab li a {
	outline: none;
	background:
		url("http://cfile25.uf.tistory.com/image/17710F454FEE42C1326F65");
	display: block;
	color: blue;
	line-height: 40px;
	text-align: center;
	text-decoration:none;
}

ul.tab li a.selected {
	background:
		url("http://cfile7.uf.tistory.com/image/18710F454FEE42C133F20E");
	text-decoration: none;
	color: #333;
	cursor: default;
}

ul.panel {
	clear: both;
	border: 1px solid #9FB7D4;
	border-top: none;
	padding: 0;
}

ul.panel li {
	list-style-type: none;
	padding: 10px;
	text-indent: 1em;
	color: #333;
}
</style>
</head>
<body>
	<div id="container">
		<ul class="tab">
			<li><a href="#tab1" class="selected">지도 만들기</a></li>
			<li><a href="#tab2">후기</a></li>
			<li><a href="#tab3">포토북</a></li>
		</ul>
		<ul class="panel">
			<li id="tab1">
			<jsp:include page="map_notice.jsp"></jsp:include>
			</li>
			<li id="tab2">Nam cursus molestie erat, a sodales erat
				sollicitudin ut. Maecenas nec urna mi, eu congue turpis. Duis vitae
				volutpat lorem. Ut vulputate tempor elit, vitae iaculis elit
				sollicitudin at. Ut gravida fermentum tempor. Mauris metus ante,
				volutpat et porta a, malesuada vel purus. In lobortis ullamcorper
				lorem eu malesuada. Nullam sollicitudin, urna eu euismod suscipit,
				eros sapien adipiscing arcu, sit amet ultricies lacus elit sed urna.
				Nam scelerisque, nulla eu mollis elementum, ipsum tortor ullamcorper
				felis, eget laoreet diam turpis dignissim metus. In eget lectus sit
				amet mi pretium pellentesque varius vitae augue. Integer mattis,
				elit nec adipiscing rhoncus, elit tellus congue sapien, et auctor mi
				nisi in purus. Curabitur commodo, neque sed ornare porta, purus
				magna rhoncus eros, quis consectetur ipsum erat ac mi. Cum sociis
				natoque penatibus et magnis dis parturient montes, nascetur
				ridiculus mus. Fusce sed turpis tortor, quis euismod enim. Integer
				faucibus venenatis egestas. Etiam eu metus et sem bibendum
				fermentum. Sed dui ante, sollicitudin at tincidunt at, pretium sit
				amet diam. Nunc porttitor tristique est sed pulvinar. Fusce eu
				ligula vitae orci venenatis sagittis sed quis ipsum.</li>
			<li id="tab3">Pellentesque in metus leo. Praesent porta, dolor
				nec mattis ullamcorper, velit purus mollis enim, nec tincidunt magna
				massa ornare elit. In ipsum enim, pellentesque vitae gravida
				ultrices, aliquet nec ante. Mauris sed nunc ut ligula dictum
				convallis vel et nunc. Aenean eget enim vitae nulla lacinia
				consequat. Quisque blandit, ante vel sodales sollicitudin, neque
				ante elementum leo, ut consequat dui risus ut purus. Vestibulum
				viverra lacus at felis dignissim bibendum. Maecenas interdum nisl eu
				metus porta luctus. Suspendisse nulla neque, ultricies nec facilisis
				nec, mollis id sapien. Donec nec quam et felis pulvinar fringilla a
				non orci. Maecenas tincidunt magna a sem faucibus eu interdum magna
				aliquam. Suspendisse a diam lorem, nec malesuada sapien. Nam a
				scelerisque velit. Integer commodo malesuada odio, sit amet rutrum
				ante viverra ut. In egestas, arcu id pretium tempus, ligula nibh
				interdum enim, non bibendum velit felis sed augue. Cum sociis
				natoque penatibus et magnis dis parturient montes, nascetur
				ridiculus mus. Praesent augue eros, posuere pharetra pharetra eu,
				feugiat eu velit.</li>

		</ul>
	</div>
</body>
</html>