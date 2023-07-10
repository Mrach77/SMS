<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>视频信息列表页面</title>
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
                <td style="width:150px;">编号</td>
                <td>${datainfo.dataid}</td>
            </tr>
            <tr>
                <td style="width:150px;">名称</td>
                <td>${datainfo.dataname}</td>
            </tr>
            <tr>
                <td style="width:150px;">内容</td>
                <td>${datainfo.datacontent}</td>
            </tr>
            <tr>
                <td style="width:150px;">路径</td>
                <td>${datainfo.dataurl}</td>
            </tr>
            <tr>
                <td style="width:150px;">用户</td>
                <td>${datainfo.datauser}</td>
            </tr>
            <tr>
                <td style="width:150px;">简介</td>
                <td>${datainfo.dataintro}</td>
            </tr>
            <tr>
                <td style="width:150px;">备注</td>
                <td>${datainfo.dataremarker}</td>
            </tr>
            <tr>
                <td style="width:150px;">分类</td>
                <td>${datainfo.datatype}</td>
            </tr>
            <tr>
                <td style="width:150px;">时间</td>
                <td>${datainfo.dataaddtime}</td>
            </tr>
        </tbody>
    </table>
</div>


</body>
</html>
