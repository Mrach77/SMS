<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>用户信息列表页面</title>
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
                <td style="width:150px;">用户编号</td>
                <td>${admininfo.adminid}</td>
            </tr>
            <tr>
                <td style="width:150px;">用户用户名</td>
                <td>${admininfo.adminname}</td>
            </tr>
            <tr>
                <td style="width:150px;">用户密码</td>
                <td>${admininfo.adminpwd}</td>
            </tr>
            <tr>
                <td style="width:150px;">用户角色</td>
                <td>${admininfo.role}</td>
            </tr>
            <tr>
                <td style="width:150px;">用户头像</td>
                <td>${admininfo.headimg}</td>
            </tr>
            <tr>
                <td style="width:150px;">创建时间</td>
                <td>${admininfo.admincreatetime}</td>
            </tr>
            <tr>
                <td style="width:150px;">用户状态</td>
                <td>${admininfo.islock}</td>
            </tr>
        </tbody>
    </table>
</div>


</body>
</html>
