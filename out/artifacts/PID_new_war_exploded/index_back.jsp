<%@ page import="Entity.User_c" %><%--
  Created by IntelliJ IDEA.
  User: fangchao
  Date: 2018/6/18
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User_c user_c;
    user_c=(User_c)session.getAttribute("user");
    String name;
    name=user_c.getUsername();
%>
<html>
<head>
    <meta charset="utf-8"/>
    <title>pid后台管理页面</title>
    <meta name="author" content="" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/style_back.css" />
    <script src="javascript/jquery.js"></script>
    <script src="javascript/plug-ins/customScrollbar.min.js"></script>
    <script src="javascript/plug-ins/echarts.min.js"></script>
    <script src="javascript/plug-ins/layerUi/layer.js"></script>
    <script src="editor/ueditor.config.js"></script>
    <script src="editor/ueditor.all.js"></script>
    <script src="javascript/plug-ins/pagination.js"></script>
    <script src="javascript/public.js"></script>
</head>
<body>
<div class="main-wrap">
    <div class="side-nav">
        <div class="side-logo">
            <div class="logo">
                <strong>pid后台管理页面</strong>
            </div>
        </div>

        <nav class="side-menu content mCustomScrollbar" data-mcs-theme="minimal-dark">
            <h2>
                <a href="index_back.jsp" class="InitialPage"><i class="icon-dashboard"></i>首页</a>
            </h2>
            <ul>
                <li>
                    <dl>
                        <dt>
                            <i class="icon-columns"></i>信息管理<i class="icon-angle-right"></i>
                        </dt>
                        <dd>
                            <a href="/Servlet_select_employeeList">员工管理</a>
                        </dd>
                        <dd>
                            <a href="/Servlet_select_client">用户管理</a>
                        </dd>
                        <dd>
                            <a href="/Servlet_select_evaluate">留言管理</a>
                        </dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                            <i class="icon-inbox"></i>文章管理<i class="icon-angle-right"></i>
                        </dt>
                        <dd>
                            <a href="/Servlet_select_friendstory">病友故事会</a>
                        </dd>
                        <dd>
                            <a href="/Servlet_select_news">最新动态</a>
                        </dd>
                    </dl>
                </li>

            </ul>
        </nav>
        <footer class="side-footer"></footer>
    </div>
    <div class="content-wrap">
        <header class="top-hd">
            <div class="hd-lt">
                <a class="icon-reorder"></a>
            </div>
            <div class="hd-rt">
                <ul>
                    <li>
                        <a><i class="icon-user"></i>管理员:<em><%=name%></em></a>
                    </li>
                    <li>
                        <a href="/Servletdestroy"><i class="icon-signout"></i>安全退出</a>
                    </li>
                </ul>
            </div>
        </header>
        <main class="main-cont content mCustomScrollbar">
            <!--开始::内容-->
            <div class="page-wrap">
                <section class="page-hd">
                    <header>
                        <h2 class="title"><i class="icon-home"></i>pid后台管理界面</h2>
                    </header>
                    <hr>
                </section>




            </div>



            <!--开始::结束-->
        </main>
        <footer class="btm-ft">
            <p class="clear">


            </p>
        </footer>
    </div>
</div>
</body>
</html>
