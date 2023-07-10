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
                <td style="width:150px;">ID</td>
                <td>${userinfo.id}</td>
            </tr>
            <tr>
                <td style="width:150px;">姓名</td>
                <td>${userinfo.name}</td>
            </tr>
            <tr>
                <td style="width:150px;">电话</td>
                <td>${userinfo.phone}</td>
            </tr>
            <tr>
                <td style="width:150px;">头像</td>
                <td>${userinfo.picurl}</td>
            </tr>
            <tr>
                <td style="width:150px;">邮箱</td>
                <td>${userinfo.email}</td>
            </tr>
            <tr>
                <td style="width:150px;">角色</td>
                <td>${userinfo.role}</td>
            </tr>
            <tr>
                <td style="width:150px;">性别</td>
                <td>${userinfo.sex}</td>
            </tr>
            <tr>
                <td style="width:150px;">密码</td>
                <td>${userinfo.password}</td>
            </tr>
            <tr>
                <td style="width:150px;">备注</td>
                <td>${userinfo.intro}</td>
            </tr>
        </tbody>
    </table>
</div>


</body>
</html>
