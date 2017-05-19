$(function() {
	// 登录按钮点击事件
	$("#registerB").click(function() {
		var regisName = $("input[name='registerName']").val();
		var password = $("input[name='password']").val();
		var password1 = $("input[name='password1']").val();
		if (password != password1) {
			alertTip("两次输入密码不正确，请重新输入");
			$("input[name='password']").val("");
			$("input[name='password1']").val("");
		} else {
			if (regisName == "" || password == "") {
				alertTip("用户名或密码不能为空");
				return;
			}
			var params = {
				regisName : regisName,
				password : password,
			}
			$.post('./userSelfService/register.do', params, function(data) {
				// 是否有数据
				if (data.suss) {
					// 用户名密码正确
						window.location.href = "./index.jsp";
				} else {
					alertTip("服务器异常");
				}
			}).error(function() {
				alertTip("服务器异常");
			});
		}

	});
});


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