<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<%
    //获取项目路径 例如 http://localhost:8080/weinxinadmin/ 或者 http://www.xxx.com/weinxinadmin/
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    Date date = new Date();
    String strDateFormat = "yyyy-MM-dd HH:mm:ss";
    SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
    String nowDate = sdf.format(date);
%>
<c:if test="${sessionScope.loginUser==null}">
    <script>
        alert("登录以后才可以访问");
        location.href = "${ctx}/view/admin/login.jsp";
    </script>
</c:if>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>基于web的作业在线批改系统</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <script src="${ctx}/static/js/jquery-1.9.1.min.js"></script>
    <%--设置ico图标--%>
    <link rel="shortcut icon" href="${ctx}/favicon.png" type="image/x-icon"/>
    <link rel="icon" href="${ctx}/favicon.png" type="image/gif">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo" style="width: 250px;">基于web的作业在线批改系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left" style="margin-left: 100px;">
            <li class="layui-nav-item">
                <a href="javascript:;">管理员管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/admininfo/add" target="tqmContent">添加管理员</a></dd>
                    <dd><a href="${ctx}/admininfo/list" target="tqmContent">管理员列表</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">教师学生管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/view/userinfo/userinfoExecl.jsp" target="tqmContent">Execl导入信息</a></dd>
                    <dd><a href="${ctx}/userinfo/add" target="tqmContent">教师学生添加</a></dd>
                    <dd><a href="${ctx}/userinfo/list" target="tqmContent">教师学生列表</a></dd>
                </dl>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">分类信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/sortinfo/add" target="tqmContent">添加分类信息</a></dd>
                    <dd><a href="${ctx}/sortinfo/list" target="tqmContent">分类信息列表</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">评论信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/msginfo/add" target="tqmContent">添加评论信息</a></dd>
                    <dd><a href="${ctx}/msginfo/list" target="tqmContent">评论信息列表</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">公告管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/noticeinfo/add" target="tqmContent">添加公告</a></dd>
                    <dd><a href="${ctx}/noticeinfo/list" target="tqmContent">公告列表</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">视频信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/datainfo/add" target="tqmContent">添加视频信息</a></dd>
                    <dd><a href="${ctx}/datainfo/list" target="tqmContent">视频信息列表</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">任务信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/workinfo/add" target="tqmContent">添加任务信息</a></dd>
                    <dd><a href="${ctx}/workinfo/list" target="tqmContent">任务信息列表</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">作业信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/homework/add" target="tqmContent">添加作业信息</a></dd>
                    <dd><a href="${ctx}/homework/list" target="tqmContent">作业信息列表</a></dd>
                </dl>
            </li>

        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="${ctx}/static/aa.jpg" class="layui-nav-img">
                    ${sessionScope.loginUser.adminname}-${sessionScope.loginUser.role}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/admininfo/edit?id=${sessionScope.loginUser.adminid}"
                           target="tqmContent">修改密码</a></dd>
                    <dd><a href="${ctx}/admininfo/detail?id=${sessionScope.loginUser.adminid}"
                           target="tqmContent">个人中心</a>
                    </dd>
                    <dd><a href="${ctx}/admininfo/loginOut">退出登录</a>
                    </dd>
                </dl>

            </li>
        </ul>
    </div>


    <div class="layui-body" style="left: 0px;width: 100%;">
        <!-- 内容主体区域 -->
        <!-- 内容主体区域 -->
        <div style="padding: 0px;height: 100%;width: 100%;">
            <iframe src="${ctx}/userinfo/list" name="tqmContent"
                    style="border: 0px solid blue;height: 100%;width: 100%;scrolling:auto;">

            </iframe>
        </div>
    </div>

    <div class="layui-footer" style="left: 0px;text-align: center;">
        <!-- 底部固定区域 -->
        基于web的作业在线批改系统 - 底部版权区域
    </div>
</div>

<script>
    //JavaScript代码区域
    layui.use(['element', 'form'], function () {
        var element = layui.element;
        var form = layui.form;

    });
</script>
</body>
</html>