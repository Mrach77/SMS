<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>基于web的作业在线批改系统-首页</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <link rel="shortcut icon" href="${ctx}/static/favicon.png" type="image/x-icon"/>
    <link rel="icon" href="${ctx}/static/favicon.png" type="image/gif">
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->

<!--轮播图 start-->
<jsp:include page="banner.jsp"/>
<!--轮播图 end-->

<div class="layui-container">

    <fieldset class="layui-elem-field layui-field-title site-title" style="text-align: center;margin: 30px">
        <legend><a name="compatibility">信息详情-展示</a></legend>
    </fieldset>
    <div class="layui-row layui-col-space20">
        <c:forEach items="${datainfoList}" var="v">
            <div class="layui-col-md4 ">
                <div class="layui-card" style="background: #eee;margin-top: 20px;">
                    <div class="layui-card-header" style="text-align: center;">
                        <h3>${v.dataname}</h3>
                    </div>
                    <div class="layui-card-body">
                        <img src=" ${v.dataintro}" width="100%" height="200"/>
                    </div>
                    <div style="text-align: center;padding: 10px;background: #eee;">
                        <a href="${ctx}/detail?id=${v.dataid}"
                           class="layui-btn layui-btn-danger layui-btn-sm sendmsg">
                            <i class="layui-icon layui-icon-video"></i>我要学习
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<div style="height: 50px;"></div>
<jsp:include page="foot.jsp"/>
<style>
    .layui-card {
        border: 1px #eee solid;
    }

    .layui-card:hover {
        border: 1px red solid;
    }
</style>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form', 'laydate', 'layedit'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
        var laydate = layui.laydate;
        $(".showDetail").click(function () {
            var path = $(this).attr("path");
            layer.open({
                type: 2,  //弹出类型
                skin: 'layui-layer-demo', //样式类名
                title: '信息详情页面',
                anim: 2,    //弹出窗口使用的动画
                area: ['400px', '500px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        });
        //…
    });
</script>
</body>
</html>