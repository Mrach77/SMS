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
    <title>作业信息添加页面</title>
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
<jsp:include page="head.jsp"/>
<jsp:include page="banner.jsp"/>
<div class="layui-container">


    <form class="layui-form  layui-form-pane" action="${ctx}/homework_insert" method="post" style="margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">作业名称</label>
            <div class="layui-input-block">
                <input type="text" name="swname" id="swname" value="<%=request.getParameter("wname") %>" lay-verify autocomplete="off"
                       placeholder="请输入作业名称"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" style="height: 325px;">作业内容</label>
            <div class="layui-input-block">
                <%--<input type="text" name="swcontent" id="swcontent" value="" lay-verify autocomplete="off"
                       placeholder="请输入作业内容"
                       class="layui-input">--%>
                <textarea id="swcontent" name="swcontent" style="display: none;"></textarea>
            </div>
        </div>

        <div class="layui-form-item" style="display: none">
            <label class="layui-form-label">作业分数</label>
            <div class="layui-input-block">
                <input type="text" name="swscore" id="swscore" value="" lay-verify autocomplete="off"
                       placeholder="请输入作业分数"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">作业备注</label>
            <div class="layui-input-block">
                <input type="text" name="swintro" id="swintro" value="" lay-verify autocomplete="off"
                       placeholder="请输入作业备注"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">提交用户</label>
            <div class="layui-input-block">
                <input type="text" name="swuser" id="swuser" value="${sessionScope.loginUserinfo.name}" lay-verify autocomplete="off"
                       placeholder="请输入提交用户"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">提交时间</label>
            <div class="layui-input-block">
                <input type="text" name="swtime" id="swtime" value="${nowTime}" lay-verify autocomplete="off"
                       placeholder="请输入提交时间"
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


        //layui编辑器使用 开始
        var layedit = layui.layedit;
        layedit.set({
            uploadImage: {
                url: '${ctx}/layeditUploadFile' //接口url
                , type: 'post' //默认post
            }
        });
        var contentIndex = layedit.build('swcontent'); //建立编辑器
        layedit.setContent(contentIndex, ''); //赋值
        //编辑器内容同步到表单元素中
        form.verify({
            content: function (value) {
                return layedit.sync(contentIndex);
            }
        });
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
