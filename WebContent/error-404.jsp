<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>404-页面不存在</title>
<link href="<%=request.getContextPath()%>/css/error404.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- 代码 开始 -->
<div class="fullScreen" id="fullScreen">
    <img class="rotating" src="<%=request.getContextPath()%>/images/login/spaceman.svg" />
    <div class="pagenotfound-text">
    <h1>您访问的地址不存在 <span id="seconds">6</span>秒后自动返回</h1>
    <h2><a href="/DataPlatform">回到登录</a></h2>
    </div>
    <canvas id="canvas2d"></canvas>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/error404.js"></script>
<!-- 代码 结束 -->
<script>
    var contextPath = '<%=request.getContextPath()%>';
    var sessionName = '<%=request.getSession().getAttribute("name") %>';
	function backLogin(){
		var seconds =  $("#seconds").text();
		if(seconds==0){			
			//存在登录状态，返回前一页
			if(sessionName && sessionName!='null'){
				window.history.back();
			}else{
				window.location.href=contextPath;
			}
			return;
		}
		$("#seconds").text(seconds-1);
		setTimeout(function(){
			backLogin();
		}, 1000);
	}
	backLogin();
	
	
</script>

</body>
</html>