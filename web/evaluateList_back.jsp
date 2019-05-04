<%@ page import="Entity.User_c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--
  Created by IntelliJ IDEA.
  User: fangchao
  Date: 2018/6/18
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%--%>
<%--int flag = 0;--%>
<%--Custom custom;--%>
<%--Employee employee;--%>
<%--String name = null;--%>
<%--if(session.getAttribute("CustomerLogin")!=null)--%>
<%--{--%>
<%--custom = (Custom) session.getAttribute("CustomerLogin");--%>
<%--flag = 1;--%>
<%--name = custom.getCustloginid();--%>
<%--}--%>
<%--else if(session.getAttribute("EmployeeLogin")!=null)--%>
<%--{--%>
<%--employee = (Employee)session.getAttribute("EmployeeLogin");--%>
<%--flag = 2;--%>
<%--name = employee.getEploginid();--%>
<%--}--%>
<%--else--%>
<%--{--%>
<%--flag = 0;--%>
<%--}--%>
<%--%>--%>
<%
    User_c user_c;
    user_c=(User_c)session.getAttribute("user");
    String name;
    name=user_c.getUsername();
%>
<html>
<head>
    <meta charset="utf-8"/>
    <title></title>
    <meta name="keywords"  content="设置关键词..." />
    <meta name="description" content="设置描述..." />
    <meta name="author" content="DeathGhost" />
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
            <div class="page-wrap">
                <!--开始::内容-->
                <section class="page-hd">
                    <header>
                        <h2 class="title">回复列表</h2>
                        <p class="title-description">
                        </p>
                    </header>
                    <hr>
                </section>
                    <form action="">
                    <table class="table table-bordered  mb-15">
                        <tr>
                            <td>序号</td>
                            <td>主题</td>
                            <td>用户名</td>
                            <td>昵称</td>
                            <td>回复消息</td>
                            <td>回复日期</td>
                            <td>操作</td>
                        </tr>
                        <c:forEach items="${evaluateList_back}" var="eva">
                            <tr class="cen">
                                <td>${eva.id}</td>
                                <td>${eva.title_e}</td>
                                <td>${eva.username}</td>
                                <td>${eva.name}</td>
                                <td>${eva.text_e}</td>
                                <td>${eva.date_e}</td>
                                <td>
                                    <a href="/Servlet_delete_evaluate?id=${eva.id}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>

                    </table>
                </form>


                <!--开始::结束-->
            </div>
        </main>
        <footer class="btm-ft">

        </footer>
    </div>
</div>

</body>
</html>