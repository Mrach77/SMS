<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--获取当前时间--%>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
<html>
<head>
    <title>视频信息添加页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/common.js"></script>
    <script>
        var ctx = '${ctx}/';
    </script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->

<!--轮播图 start-->
<jsp:include page="banner.jsp"/>
<!--轮播图 end-->

<div class="layui-container">


    <form class="layui-form  layui-form-pane" action="${ctx}/datainfo_insert" method="post" style="margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">名称</label>
            <div class="layui-input-block">
                <input type="text" name="dataname" id="dataname" value="" lay-verify autocomplete="off"
                       placeholder="请输入名称"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">内容</label>
            <div class="layui-input-block">
                <input type="text" name="datacontent" id="datacontent" value="" lay-verify autocomplete="off"
                       placeholder="请输入内容"
                       class="layui-input">
            </div>
        </div>


        <div class="layui-form-item ">
            <label class="layui-form-label">路径</label>
            <div class="layui-input-block">
                <input id="myfile" type="file" name="myfile" style="display: none;" onchange="uploadFileUtil('myfile','picurl')">
                <input type="text" id="picurl" name="dataurl" value="" lay-verify="required"
                       placeholder="网路路径或者上传  如果是要上传，请点击后面的上传文件按钮"
                       value="" class="layui-input" style="width: 80%;display: inline-block;"/>
                <span onclick="uploadFileUtilClick('myfile')" class="layui-btn"><i class="layui-icon layui-icon-upload"></i>上传文件</span>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">用户</label>
            <div class="layui-input-block">
                <input type="text" name="datauser" id="datauser" value="" lay-verify autocomplete="off"
                       placeholder="请输入用户"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item ">
            <label class="layui-form-label">图片</label>
            <div class="layui-input-block">
                <input id="myfile2" type="file" name="myfile2" style="display: none;" onchange="uploadFileUtil('myfile2','picurl2')">
                <input type="text" id="picurl2" name="dataintro" value="" lay-verify="required"
                       placeholder="网路路径或者上传  如果是要上传，请点击后面的上传文件按钮"
                       value="" class="layui-input" style="width: 80%;display: inline-block;"/>
                <span onclick="uploadFileUtilClick('myfile2')" class="layui-btn"><i class="layui-icon layui-icon-upload"></i>上传文件</span>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <input type="text" name="dataremarker" id="dataremarker" value="" lay-verify autocomplete="off"
                       placeholder="请输入备注"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">分类</label>
            <div class="layui-input-block">
                <select name="datatype" id="datatype" class="layui-select">
                    <option value="">请选择分类</option>
                    <c:forEach items="#{sessionScope.sortinfoList}" var="item">
                        <option value="${item.sname}">${item.sname}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">时间</label>
            <div class="layui-input-block">
                <input type="text" name="dataaddtime" id="dataaddtime" value="${nowTime}" lay-verify autocomplete="off"
                       placeholder="请输入时间"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="demo1" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form', 'laydate', 'layedit'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
        var laydate = layui.laydate;
        var layedit = layui.layedit;

        //监听提交
        form.on('submit(demo1)', function (data) {
            console.log(JSON.stringify(data.field));
            return true;
        });

    });
</script>
<jsp:include page="foot.jsp"/>
</body>
</html>
