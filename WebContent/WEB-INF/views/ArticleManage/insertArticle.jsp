<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insertArcitle</title>

<script type="text/javascript" charset="utf-8" src="./utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="./utf8-jsp/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="。/lang/zh-cn/zh-cn.js"></script>


</head>
<body>
	<div>
		<form style="width:100%;text-align:center">
		    <ul>
		   	 	<li>
		   	 		<input name="title" type="text" />
		   	 	</li>
		   	 	<li><input name="digest" type="text"/></li>
		   	 	<li><input name="content" type="hidden" id="content" /></li>
		   	 	<li>
		    	</li>
		    	<li>
		    		<input id="insertB" type="button" value="录入" />
		    	</li>
		    	
		    </ul>
	    </form>
	</div>
	<div>
    <h1>此处输入正文</h1>
    <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
	</div>
	 <script type="text/javascript">
        var editor = UE.getEditor('container');
    </script>
	
</body>
</html>