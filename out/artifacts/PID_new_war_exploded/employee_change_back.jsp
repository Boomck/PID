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
    User_c user_c=(User_c)session.getAttribute("user_c");
%>
<%
    User_c user_;
    user_=(User_c)session.getAttribute("user");
    String name;
    name=user_.getUsername();
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
        input{                 border: 1px solid #ccc;                 padding: 7px 0px;                 border-radius: 3px;                 padding-left:5px;                 -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);                 box-shadow: inset 0 1px 1px rgba(0,0,0,.075);                 -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;                 -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;                 transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s             }             input:focus{                     border-color: #66afe9;                     outline: 0;                     -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);                     box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6) ;            }
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
                        <h2 class="title"></h2>
                        <p class="title-description">
                        </p>
                    </header>
                    <hr>
                </section>
                <form action="/Servlet_change_employee">
                    <table>
                        <tr>
                        <tr>
                            <td align="left">用户名</td>
                            <td><input type="text" name="username" readonly="readonly" value=<%=user_c.getUsername()%>></td>
                        </tr>
                        <tr>
                            <td align="left">真实姓名</td>
                            <td><input type="text" name="name" value=<%=user_c.getName()%>></td>
                        </tr>
                        <tr>
                            <td align="left">密码</td>
                            <td><input type="password" name="password" id="password" value=<%=user_c.getPassword()%>>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left;"> 验证问题 </td>
                            <td><input type="text" name="validation" value=<%=user_c.getValidation()%>>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left;"> 验证问题答案 </td>
                            <td><input type="text" name="valianswer" value=<%=user_c.getValianswer()%>>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left;">email</td>
                            <td><input type="text" name="mail" value=<%=user_c.getMail()%>>
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align:left;">电话号码</td>
                            <td><input type="text" name="phone" value=<%=user_c.getPhone()%>>
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align:left;">qq号码</td>
                            <td><input type="text" name="qqnumber" value=<%=user_c.getQqnumber()%>>
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align:left;">微信号码</td>
                            <td><input type="text" name="wechatnumber" value=<%=user_c.getWechatnumber()%>>
                            </td>
                        </tr>
                        <td>
                            <input type="submit" name="" value="修改">
                            <input type="reset" name="" value="重置">
                        </td>
                        </tr>
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
