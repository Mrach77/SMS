<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<ul class="layui-nav layui-bg-green" lay-filter="" style="margin-bottom: 0px;text-align: center;">
    <li class="layui-nav-item"><a href="${ctx}/index">基于web的作业在线批改系统</a></li>
    <li class="layui-nav-item"><a href="${ctx}/index">首页</a></li>
    <li class="layui-nav-item">
        <a href="javascript:;">所有分类</a>
        <dl class="layui-nav-child">
            <c:forEach items="${sessionScope.sortinfoList}" var="v">
                <dd><a href="${ctx}/index_type?type=${v.sname}">${v.sname}</a></dd>
            </c:forEach>
        </dl>
    </li>
    <li class="layui-nav-item">
        <a href="javascript:;">所有教师</a>
        <dl class="layui-nav-child">
            <c:forEach items="${sessionScope.teacherList}" var="v">
                <dd><a href="${ctx}/index_type?user=${v.name}">${v.name}</a></dd>
            </c:forEach>
        </dl>
    </li>
    <li class="layui-nav-item"><a href="${ctx}/infoList">公告信息</a></li>

    <c:if test="${sessionScope.loginUserinfo==null}">
        <li class="layui-nav-item"><a href="${ctx}/admininfo/tologin" target="_blank">后台管理</a></li>
        <li class="layui-nav-item"><a href="${ctx}/view/login.jsp">马上登陆</a></li>
        <li class="layui-nav-item"><a href="${ctx}/view/register.jsp">点我注册</a></li>
    </c:if>
    <c:if test="${sessionScope.loginUserinfo!=null}">
        <c:if test="${sessionScope.loginUserinfo.role=='学生'}">
            <li class="layui-nav-item"><a href="${ctx}/workinfoList">任务列表</a></li>
            <li class="layui-nav-item"><a href="${ctx}/homeworkList">我的作业</a></li>
        </c:if>
        <c:if test="${sessionScope.loginUserinfo.role=='教师'}">
            <li class="layui-nav-item"><a href="${ctx}/view/datainfoAdd.jsp">发布课程</a></li>
            <li class="layui-nav-item"><a href="${ctx}/view/workinfoAdd.jsp">发布任务</a></li>
            <li class="layui-nav-item"><a href="${ctx}/homeworkList">查阅作业</a></li>
        </c:if>
        <li class="layui-nav-item">
            <a href=""><img src="${sessionScope.loginUserinfo.picurl}"
                            class="layui-nav-img">${sessionScope.loginUserinfo.name}-${sessionScope.loginUserinfo.role}</a>
            <dl class="layui-nav-child">
                <dd><a href="${ctx}/userinfoCenter">个人中心</a></dd>
                <dd><a href="${ctx}/loginOut">退出登录</a></dd>
            </dl>
        </li>
    </c:if>
</ul>