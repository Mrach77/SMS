<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>公告信息列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/" />
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <table class="layui-table">
        <tbody>
        <tr>
            <td style="width:150px;">公告编号</td>
            <td>${noticeinfo.noticeid}</td>
        </tr>
        <tr>
            <td style="width:150px;">公告标题</td>
            <td>${noticeinfo.noticetitle}</td>
        </tr>
        <tr>
            <td style="width:150px;">公告内容</td>
            <td>${noticeinfo.noticecontent}</td>
        </tr>
        <tr>
            <td style="width:150px;">发布时间</td>
            <td>${noticeinfo.noticeaddtime}</td>
        </tr>
        <tr>
            <td style="width:150px;">公告备注</td>
            <td>${noticeinfo.noticeremarker}</td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
