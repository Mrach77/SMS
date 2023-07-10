<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
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
    <base href="${ctx}/" />
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <table class="layui-table">
        <tbody>
            <tr>
                <td style="width:150px;">作业编号</td>
                <td>${homework.swid}</td>
            </tr>
            <tr>
                <td style="width:150px;">作业名称</td>
                <td>${homework.swname}</td>
            </tr>
            <tr>
                <td style="width:150px;">作业内容</td>
                <td>${homework.swcontent}</td>
            </tr>
            <tr>
                <td style="width:150px;">作业分数</td>
                <td>${homework.swscore}</td>
            </tr>
            <tr>
                <td style="width:150px;">作业备注</td>
                <td>${homework.swintro}</td>
            </tr>
            <tr>
                <td style="width:150px;">提交用户</td>
                <td>${homework.swuser}</td>
            </tr>
            <tr>
                <td style="width:150px;">提交时间</td>
                <td>${homework.swtime}</td>
            </tr>
        </tbody>
    </table>
</div>


</body>
</html>
