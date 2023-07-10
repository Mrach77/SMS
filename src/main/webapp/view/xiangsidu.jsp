<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>作业信息列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">
    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
            <th>作业编号</th>
            <th>作业名称</th>
            <th>作业相似度</th>
            <th>作业备注</th>
            <th>提交用户</th>
            <th>提交时间</th>
        </tr>
        <c:forEach items="${result}" var="v">
            <tr>
                <td>${v.swid}</td>
                <td>${v.swname}</td>
                <td>${v.swscore}%</td>
                <td>${v.swintro}</td>
                <td>${v.swuser}</td>
                <td>${v.swtime}</td>
            </tr>
        </c:forEach>


        </tbody>
    </table>
</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
        //绑定详情点击事件


    });
</script>
</body>
</html>
