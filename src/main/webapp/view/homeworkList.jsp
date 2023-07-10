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
<jsp:include page="head.jsp"/>
<jsp:include page="banner.jsp"/>
<div class="layui-container">
    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
            <th>作业编号</th>
            <th>作业名称</th>
            <%--<th>作业内容</th>--%>
            <th>作业分数</th>
            <th>作业备注</th>
            <th>提交用户</th>
            <th>提交时间</th>
            <th>操作</th>
        </tr>


        <c:forEach items="${homeworkList}" var="v">
            <tr>
                <td>${v.swid}</td>
                <td>${v.swname}</td>
               <%-- <td>${v.swcontent}</td>--%>
                <td>${v.swscore}</td>
                <td>${v.swintro}</td>
                <td>${v.swuser}</td>
                <td>${v.swtime}</td>
                <td style="width: 180px;">
                    <c:if test="${sessionScope.loginUserinfo.role=='教师'}">
                        <a path="${ctx}/xiangsidu?id=${v.swid}" class="layui-btn layui-btn layui-btn-sm checkContent">相似度</a>
                        <a href="${ctx}/homework_edit?id=${v.swid}" class="layui-btn layui-btn layui-btn-sm">评阅</a>
                        <button path="${ctx}/homework/detail?id=${v.swid}"
                                class="layui-btn layui-btn-normal layui-btn-sm showDetail">详情
                        </button>
                    </c:if>
                    <c:if test="${sessionScope.loginUserinfo.role=='学生'}">
                        <button path="${ctx}/homework/detail?id=${v.swid}"
                                class="layui-btn layui-btn-normal layui-btn-sm showDetail">详情
                        </button>
                    </c:if>
                </td>
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

        $(".checkContent").click(function () {
            var path = $(this).attr("path");
            layer.open({
                offset: '100px', //设置弹出窗口的位置 上边距100px
                type: 2,  //弹出类型
                skin: 'layui-layer-molv', //样式类名
                title: '作业相似度检查',
                anim: 2,    //弹出窗口使用的动画
                area: ['800px', '620px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })

        $(".showDetail").click(function () {
            var path = $(this).attr("path");
            layer.open({
                offset: '100px', //设置弹出窗口的位置 上边距100px
                type: 2,  //弹出类型
                skin: 'layui-layer-molv', //样式类名
                title: '作业信息详情查看',
                anim: 2,    //弹出窗口使用的动画
                area: ['800px', '620px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })
    });
</script>
<jsp:include page="foot.jsp"/>
</body>
</html>