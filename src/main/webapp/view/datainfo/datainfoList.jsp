<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-fluid">


    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
            <th>编号</th>
            <th>名称</th>
            <%-- <th>内容</th>
             <th>路径</th>--%>
            <th>用户</th>
            <%-- <th>简介</th>
             <th>备注</th>--%>
            <th>分类</th>
            <th>时间</th>
            <th>操作</th>
        </tr>


        <c:forEach items="${datainfoList}" var="v">
            <tr>
                <td>${v.dataid}</td>
                <td>${v.dataname}</td>
                    <%--<td>${v.datacontent}</td>
                    <td>${v.dataurl}</td>--%>
                <td>${v.datauser}</td>
                    <%--<td>${v.dataintro}</td>
                    <td>${v.dataremarker}</td>--%>
                <td>${v.datatype}</td>
                <td>${v.dataaddtime}</td>
                <td style="width: 180px;">
                    <a href="${ctx}/datainfo/edit?id=${v.dataid}" class="layui-btn layui-btn layui-btn-sm">修改</a>
                    <a href="${ctx}/datainfo/delete?id=${v.dataid}" class="layui-btn layui-btn-danger layui-btn-sm">删除</a>
                    <button path="${ctx}/datainfo/detail?id=${v.dataid}"
                            class="layui-btn layui-btn-normal layui-btn-sm showDetail">详情
                    </button>
                </td>
            </tr>
        </c:forEach>


        </tbody>
    </table>

    <%--引入分页代码--%>
    <jsp:include page="../sortPage.jsp"></jsp:include>
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
        $(".showDetail").click(function () {
            var path = $(this).attr("path");
            layer.open({
                offset: '100px', //设置弹出窗口的位置 上边距100px
                type: 2,  //弹出类型
                skin: 'layui-layer-molv', //样式类名
                title: '视频信息详情查看',
                anim: 2,    //弹出窗口使用的动画
                area: ['800px', '620px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })
    });
</script>

</body>
</html>
