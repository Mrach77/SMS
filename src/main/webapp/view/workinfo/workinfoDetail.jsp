<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>任务信息列表页面</title>
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
                <td style="width:150px;">任务编号</td>
                <td>${workinfo.wid}</td>
            </tr>
            <tr>
                <td style="width:150px;">任务名称</td>
                <td>${workinfo.wname}</td>
            </tr>
            <tr>
                <td style="width:150px;">任务内容</td>
                <td>${workinfo.wcontent}</td>
            </tr>
            <tr>
                <td style="width:150px;">发布教师</td>
                <td>${workinfo.wuser}</td>
            </tr>
            <tr>
                <td style="width:150px;">发布时间</td>
                <td>${workinfo.waddtime}</td>
            </tr>
        </tbody>
    </table>
</div>


</body>
</html>
