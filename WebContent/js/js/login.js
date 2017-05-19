/**
 * @author sheyh
 * @date 2016-6-15
 * @describtion 登录页面相关js文件
 */

$(function(){
		//登录按钮点击事件
		$("#register").click(function(){
			window.location.href="./register.jsp";
		});
	});

$(function(){
	//登录按钮点击事件
	$("#loginBtn").click(function(){
		var loginName = $("input[name='loginName']").val();
		var password = $("input[name='password']").val();
		if(loginName=="" || password==""){
			alertTip("用户名或密码不能为空");
			return;
		}
		var params = {
				loginName : loginName,
				password : password,
		}
		$.post('./userLogin/lgn.do',params,function(data){
			//是否有数据
			if(data){
				//用户名密码正确
				if(data.suss){
					rememberPwd();
						window.location.href="./manageIndex.jsp";
				}else{
					alertTip(data.url);
				}
			}else{
				alertTip("服务器异常");
			}
		}).error(function(){
			alertTip("服务器异常");
		});
	});
	
	//回车键登录
	$("body").keydown(function(e) {
		//兼容Ie和firefox
		var curKey = e.which;
	    if (curKey == "13") {
	    	$("#loginBtn").click();
	    }
	}); 
	
	
	//提示方法定义
	function alertTip(context){
		//提示信息
		var tip = $("<div>",{"class":"tip"}).css("display","inline-block")
		.css("color","#E4393C").css("line-height","26px")
		.css("margin-top","-38px")
		.css("height","26px").css("width","284px")
		.append($("<img>",{src:"url(../../images/icon/msgerror.png"})
		.css("position","relative").css("left","10px").css("top","2px"))
		.append($("<span>",{text:context,"class":"tip"})
		.css("position","relative").css("display","inline-block").css("left","26px"));
		//删除原有的提示信息并附加
		$("#msgalter").parent().find(".tip").remove();
		$("#msgalter").append(tip);
	}
	
	//用户名密码输入改变提示信息
	$("input[name='loginName']").change(function(){
		$("#msgalter").parent().find(".tip").remove();
	});
	$("input[name='password']").change(function(){
		$("#msgalter").parent().find(".tip").remove();
	});
	
	//记住密码
	function rememberPwd(){
		if($("#rememberMe").is(':checked')){
			//默认为7天
			setCookie("DPFusername",$("input[name='loginName']").val(),24*7,"/DataPlatform/");
			setCookie("DPFpassword",$("input[name='password']").val(),24*7,"/DataPlatform/");
		}else{
			deleteCookie("DPFusername","/DataPlatform/");
			deleteCookie("DPFpassword","/DataPlatform/");
		}
	}
	
	window.onload=function()
	{
		document.cookie="href="+"toHome.do";
		var username = getCookieValue("DPFusername");
		var password = getCookieValue("DPFpassword");
		if(username!="" && password!=""){
			$("input[name='loginName']").val(username);
			$("input[name='password']").val(password);
			$("#rememberMe").prop("checked",true);
		}else{
			$("#rememberMe").removeAttr("checked");
		}
		$("input[name='loginName']").focus();
	}
	
	//新建cookie。
	//hours为空字符串时,cookie的生存期至浏览器会话结束。hours为数字0时,建立的是一个失效的cookie,这个cookie会覆盖已经建立过的同名、同path的cookie（如果这个cookie存在）。
	function setCookie(name,value,hours,path){
		var name = escape(name);
		var value = escape(value);
		var expires = new Date();
		expires.setTime(expires.getTime() + hours*3600000);
		path = path == "" ? "" : ";path=" + path;
		_expires = (typeof hours) == "string" ? "" : ";expires=" + expires.toUTCString();
		document.cookie = name + "=" + value + _expires + path;
	}
	//获取cookie值
	function getCookieValue(name){
		var name = escape(name);
		//读cookie属性，这将返回文档的所有cookie
		var allcookies = document.cookie;
		//查找名为name的cookie的开始位置
		name += "=";
		var pos = allcookies.indexOf(name);
		//如果找到了具有该名字的cookie，那么提取并使用它的值
		if (pos != -1){ //如果pos值为-1则说明搜索"version="失败
			var start = pos + name.length; //cookie值开始的位置
			var end = allcookies.indexOf(";",start); //从cookie值开始的位置起搜索第一个";"的位置,即cookie值结尾的位置
			if (end == -1) end = allcookies.length; //如果end值为-1说明cookie列表里只有一个cookie
			var value = allcookies.substring(start,end); //提取cookie的值
			return unescape(value); //对它解码
			}
			else return ""; //搜索失败，返回空字符串
	}
	//删除cookie
	function deleteCookie(name,path){
		var name = escape(name);
		var expires = new Date(0);
		path = path == "" ? "" : ";path=" + path;
		document.cookie = name + "="+ ";expires=" + expires.toUTCString() + path;
	}

});