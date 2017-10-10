<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags" %>
<%@ include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<html>   
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LiveData管理系统</title>
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/images/login/favicon.ico" />
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.min.js"></script>
<script language="javascript">
if (window != top) 
	{
   		top.location.href = location.href; 
	}
	
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 
</head>
	<body style="background-color:#1c77ac; background-image:url(images/login/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  
	<!-- <div class="logintop">    
    </div> -->
    <div class="loginbody">
  	  <span class="systemlogo"></span> 
    <div class="loginbox">
    <sf:url var="authUrl"
value="/j_spring_security_check" />
    	<form id="login" name="login" method="post" action="<c:url value='/j_spring_security_check' />">
		    <ul>
		    	<li id="msgalter" style="margin-bottom:0px"></li>
		   	 	<li>
		   	 		<!-- <input name="login" type="text" class="loginuser" value="用户名" onclick="JavaScript:this.value=''"/> -->
		   	 		<input name="loginName" type="text" class="loginuser"/>
		   	 	</li>
		   	 	<li><input name="password" type="password" class="loginpwd" autocomplete="new-password"/></li>
		   	 	<li>
			<%-- <select id="powerId" name="powerId" class="loginselect" >
				<c:forEach var="row" items="${requestScope.platmap}">
					<option value="${row.key}"
						${(powerId eq row.key or (empty powerId and row.key eq '0')) ? 'selected="selected"' : ''}>
						<c:out value="${row.value}" />
					</option>
				</c:forEach>
			</select> --%>
			<label><input id="rememberMe" type="checkbox"/>记住密码</label>
		    	</li>
		    	<li>
		    		<input id="loginBtn" type="button" class="loginbtn"   value="登录" />
		    	</li>
					<li>
		    		<input id="register" type="button" class="registerButton"   value="注册帐号" />
		    	</li>
		    </ul>
	    </form>
    </div>
    <div class="loginbm">版权所有 &copy; 立元通信大数据</div>
    </div>
    
    
    <script src="<%=request.getContextPath()%>/js/js/login.js" type="text/javascript"></script>
</body>
</html>
