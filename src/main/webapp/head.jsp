<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Love &amp; PI</title>


    <!-- meta -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- css -->
    <link rel="stylesheet" href="bootstrap/Content/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="bootstrap/Content/main/pace.css">
    <link rel="stylesheet" href="bootstrap/Content/main/custom.css">
    <link rel="stylesheet" href="https://at.alicdn.com/t/font_234130_nem7eskcrkpdgqfr.css">

    <link rel="stylesheet" href="bootstrap/Content/datetime.css">

    <link rel="stylesheet" href="bootstrap/Content/comment.css">

    <link rel="stylesheet" href="about/endcredits.css">

    <link href="about/jumbotron-narrow.css" rel="stylesheet">


    <!-- js -->
    <script src="bootstrap/Scripts/jquery-1.9.1.min.js"></script>

    <script src="bootstrap/Scripts/bootstrap.min.js"></script>
    <script src="bootstrap/Scripts/main/pace.min.js"></script>
    <script src="bootstrap/Scripts/main/modernizr.custom.js"></script>
    <script type="text/javascript" src="bootstrap/Scripts/jquery.comment.js"></script>

    <script src="about/endcredits.js"></script>

</head>
<body>
<%--头部-导航栏开始--%>
<div class="container">
    <header id="site-header">
        <div class="row">
            <div class="col-md-4 col-sm-5 col-xs-8">
                <div class="logo">
                    <%--左侧标题--%>
                    <h1><a href="index.html"><b>Love</b> &amp; PI</a></h1>
                </div>
            </div><!-- col-md-4 -->
            <div class="col-md-8 col-sm-7 col-xs-4">
                <nav class="main-nav" role="navigation">
                    <div class="navbar-header">
                        <button type="button" id="trigger-overlay" class="navbar-toggle">
                            <span class="ion-navicon"></span>
                        </button>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <%--导航-分类展示--%>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="cl-effect-11"><a href="index.jsp" data-hover="______">首页</a></li>
                            <li class="cl-effect-11"><a href="technology.jsp" data-hover="____________">技术分享</a></li>
                            <li class="cl-effect-11"><a href="littertalk.jsp" data-hover="________">有些话</a></li>
                            <li class="cl-effect-11"><a href="footprint.jsp" data-hover="______">足迹</a></li>
                            <li class="cl-effect-11"><a href="audio.jsp" data-hover="______">关于</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </nav>

                <%--全站搜索-待开发--%>

                <div id="header-search-box">
                    <a id="search-menu" href="#"><span id="search-icon" class="ion-ios-search-strong"></span></a>
                    <div id="search-form" class="search-form">
                        <form role="search" method="get" id="searchform" action="#">
                            <input type="search" placeholder="此功能未开放" required>
                            <button type="submit"><span class="ion-ios-search-strong"></span></button>
                        </form>
                    </div>
                </div>


            </div><!-- col-md-8 -->
        </div>
    </header>
</div>
<%--头部导航栏结束--%>

