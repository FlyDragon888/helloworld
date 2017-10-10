<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%> 
<!DOCTYPE HTML>
<html>
	<head>
		<title><decorator:title default="装饰器页面..." /></title>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<%@ include file="/common/common.jsp"%>
		
		<script src="${ctx}/js/js/jquery.min.js"></script>
		<script src="${ctx}/js/js/jquery.dataTables.min.js"></script>
		<script src="${ctx}/js/js/unicorn.tables.js"></script>
		<!-- jquery 模板插件 -->
		<script src="${ctx}/js/js/jquery.tmpl.js"></script>
 	    <!-- 分页 -->
 	    <link rel="stylesheet" type="text/css" href="${ctx}/css/jquery.pagination.css" />
	    <script src="${ctx}/js/pagination/jquery.pagination-1.2.7.js"></script>
		 <!-- 分页 -->
		  <!-- 弹出框 -->
		<script src="${ctx}/js/lhgdialog/lhgdialog.min.js?skin=iblue"></script>
		
		<!-- 列表插件 -->
		 <link rel="stylesheet" type="text/css" href="${ctx}/css/tableGride/bsgrid.all.min.css" />
		<script src="${ctx}/js/tableGride/grid.zh-CN.min.js"></script>
		<script src="${ctx}/js/tableGride/bsgrid.all.min.js"></script>
		

		<!-- -->
		<script src="${ctx}/js/My97DatePicker/WdatePicker.js"></script>
		
		
		
<decorator:head />
	</head>
	<body>
		<decorator:body />
	</body>
</html>