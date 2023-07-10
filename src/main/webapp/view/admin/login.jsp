<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--判断是否有错误消息--%>
<c:if test="${msg!=null}">
    <script>
        alert("${msg}");
    </script>
</c:if>
<!DOCTYPE html>
<html>
<head>
    <title>基于web的作业在线批改系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${ctx}/static/css/style.css" rel='stylesheet' type='text/css'/>
    <%--设置ico图标--%>
    <link rel="shortcut icon" href="${ctx}/favicon.png" type="image/x-icon"/>
    <link rel="icon" href="${ctx}/favicon.png" type="image/gif">
</head>
<body style="background: url('${ctx}/static/bg123.jpg');background-position: center center;background-size: cover;">
<div class="main">
    <div class="login">
        <h1>用户登录</h1>
        <div class="inset">
            <!--start-main-->
            <form action="${ctx}/admininfo/login" method="post">
                <div>
                    <h2>基于web的作业在线批改系统</h2>
                    <span><input type="text" placeholder="请输入用户名" value="admin" name="username" class="textbox"></span>
                </div>
                <div>
                    <span><input type="password" placeholder="请输入密码" value="123456" name="password" class="password"></span>
                </div>
                <div>
                    <span>
                        <a href="${ctx}/index">返回首页</a>
                    </span>
                </div>
                <div class="sign">
                    <input type="submit" value="登录" class="submit"/>
                </div>
            </form>
        </div>
    </div>
    <!--//end-main-->
</div>


</body>
</html>