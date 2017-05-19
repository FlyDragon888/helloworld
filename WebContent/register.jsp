<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<html>   
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>帐号注册</title>
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/images/login/favicon.ico" />
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.min.js"></script>
<script language="javascript">
</script> 
</head>
	<body style="background-color:#1c77ac; background-image:url(<%=request.getContextPath()%>/images/login/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
    	<form id="login" name="login" method="post" action="<c:url value='/j_spring_security_check' />">
		    <ul>
		    	<li id="msgalter" style="margin-bottom:0px"></li>
		   	 	<li>
		   	 		<input name="registerName" type="text" class="loginuser"/>
		   	 	</li>
		   	 	<li><input name="password" type="password" class="loginpwd" autocomplete="new-password"/></li>
		   	 	<li><input name="password1" type="password" class="loginpwd" autocomplete="new-password"/></li>
		   	 	<li>
		    	</li>
		    	<li>
		    		<input id="registerB" type="button" class="loginbtn"   value="注册" />
		    	</li>
		    </ul>
	    </form>
    <div class="loginbm">版权所有 &copy; 立元通信大数据</div>
    
    
    <script src="js/js/register.js" type="text/javascript"></script>
</body>
</html>
