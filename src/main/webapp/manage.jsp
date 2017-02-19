<%--
  Created by IntelliJ IDEA.
  User: 77239
  Date: 2017/2/6/0006
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<html>
<head>
    <title>ACodesigner's Blog</title>
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body class="grey lighten-4">
<!--导航条-->
<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper white">
            <a href="#!" class="brand-logo indigo-text darken-3">ACodesigner's Blog Back End</a>
            <a href="#" data-activates="mobile-demo" class="right button-collapse grey-text"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="articleManage" class="grey-text"><i class="material-icons left">border_color</i>文章</a></li>
                <li><a href="categoryManage" class="grey-text"><i class="material-icons left">view_list</i>分类</a></li>
                <li><a href="messageManage" class="grey-text"><i class="material-icons left">message</i>消息</a></li>
                <li><a href="photoManage" class="grey-text"><i class="material-icons left">photo</i>图片</a></li>
                <li><a href="aboutManage" class="grey-text"><i class="material-icons left">error</i>关于</a></li>
                <li><a href="login?action=quit" class="waves-effect waves-green btn orange hoverable"><i
                        class="material-icons left">person</i>退出登录</a></li>
            </ul>
            <ul class="side-nav" id="mobile-demo">
                <li><a href="articleManage" class="grey-text">文章</a></li>
                <li><a href="categoryManage" class="grey-text">分类</a></li>
                <li><a href="messageManage" class="grey-text">消息</a></li>
                <li><a href="photoManage" class="grey-text">图片</a></li>
                <li><a href="aboutManage" class="grey-text">关于</a></li>
                <li><a href="home" class="grey-text">退出登录</a></li>
            </ul>
        </div>
    </nav>
</div>

<!--页面内容-->
<div class="row">
    <div class="col s2"></div>
    <div class="col s8">
        <jsp:include page="${mainPage}"></jsp:include>
    </div>
    <div class="col s2"></div>
</div>

<%--页脚--%>
<footer class="page-footer indigo darken-2">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer
                    content.</p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright indigo darken-4">
        <div class="container">
            © 2017 ACodesigner
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
        </div>
    </div>
</footer>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>