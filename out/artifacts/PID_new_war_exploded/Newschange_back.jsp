<%@ page import="Entity.News" %>
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
    News news=(News)session.getAttribute("news");
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
    <style>
        *{ box-sizing:border-box;}
        body{ background:#f4f4f4;}
        span{ font-size:12px;}
        p{ margin:5px 0;}
        .textWrap{ margin:10px 0 20px;}
        .textWrap input,.textWrap textarea{ display:inline-block; background:#fff; border-radius:4px; border:1px solid #ddd; height:34px; width:100%; padding:7px 12px; padding-right:80px; line-height:20px; font-size:14px; color:#333;}
        .textWrap textarea{ height:80px;}
    </style>
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
                        <h2 class="title">病友故事会</h2>
                        <p class="title-description">
                        </p>
                    </header>
                    <hr>
                </section>
                <form action="/Servlet_changenews" method="post" enctype="multipart/form-data">
                    <table id="tb1" border="1">
                        <tr height="30px">

                            <p><span>主题</span></p>
                            <div class="textWrap " style="position: relative;">
                                <input type="text" name="title_n" id="title_n" maxlength="10" style="padding-right: 70px;" value=<%=news.getTitle_n()%>>
                                <div class="sumtips" style="position: absolute; width: 70px; height: 34px; line-height: 34px; text-align: right; font-size: 12px; color: rgb(153, 153, 153); padding-right: 15px; right: 0px; bottom: 0px;"></div></div>
                            <p><span>摘要</span></p>
                            <div class="textWrap" style="position: relative;">
                                <textarea name="abstract_n" id="abstract_n" cols="" rows="" maxlength="200" style="padding-bottom: 30px; height: 300px;"><%=news.getAbstract_n()%></textarea>
                                <div class="sumtips" style="position: absolute; width: 70px; height: 30px; line-height: 30px; text-align: right; font-size: 12px; color: rgb(153, 153, 153); padding-right: 15px; right: 0px; bottom: 8px;"></div></div>
                            <p><span>作者</span></p>
                            <div class="textWrap " style="position: relative;">
                                <input type="text" id="source_n" name="source_n" maxlength="10" style="padding-right: 70px;" value=<%=news.getSource_n()%>>
                                <div class="sumtips" style="position: absolute; width: 70px; height: 34px; line-height: 34px; text-align: right; font-size: 12px; color: rgb(153, 153, 153); padding-right: 15px; right: 0px; bottom: 0px;"></div></div>
                            <p><span>链接</span></p>
                            <div class="textWrap " style="position: relative;">
                                <input type="text" id="link_n" name="link_n" maxlength="10" style="padding-right: 70px;" value=<%=news.getLink_n()%>>
                                <div class="sumtips" style="position: absolute; width: 70px; height: 34px; line-height: 34px; text-align: right; font-size: 12px; color: rgb(153, 153, 153); padding-right: 15px; right: 0px; bottom: 0px;"></div></div>
                            <p><span>封面图片</span></p><td colspan="2"><input name="uploadfile" type="file" /></td>
                        </tr>
                    </table>
                    <div style="height: 12px">&nbsp;</div>
                    <div>
                        <input type="submit" class="scbtn" value="上传">
                    </div>
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
<script type="text/javascript">
    $("#text_n").height($("#text_n")[0].scrollHeight);
    $("#text_n").on("keyup keydown", function(){
        $(this).height(this.scrollHeight);
    })

</script>