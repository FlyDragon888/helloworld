<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<meta charset="utf-8" />
    <link href="VerticalMenu.css" rel="stylesheet" />
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen">

    <script src="http://www.jq22.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="VerticalMenuJs.js"></script>

</head>
<body style="background-color: darkgray;">
    <div>
        <div class="VerticalMenu">
            <div>
                <div><span>文章管理</span><i class="fa fa-angle-right fa-lg"></i></div>
                <div name="xz">
                    <div>
                        <div><span><a href="${ctx}/articleManage/toInsert.do" target=" mainFrame">文章录入</a></span></div>
                    </div>
                    <div>
                        <div><span><a href="${ctx}/articleManage/selectArticle.do" target="mainFrame">文章修改</a></span></div>
                    </div>
                </div>
            </div>
          
            <div>
                <div><span>服务管理</span><i class="fa fa-angle-right fa-lg"></i></div>
                <div name="xz">
                    <div>
                        <div><span>服务信息申请</span></div>
                    </div>
                    <div>
                        <div><span>服务信息维护</span></div>
                    </div>
                    <div>
                        <div><span>服务信息审核</span></div>
                    </div>
                </div>
            </div>
            <div>
                <div><span>日志管理</span><i class="fa fa-angle-right fa-lg"></i></div>
                <div name="xz">
                    <div>
                        <div><span>日志查询</span></div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
</body>
</html>