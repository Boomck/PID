<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Entity.User_c" %><%--
  Created by IntelliJ IDEA.
  User: BOOM
  Date: 2018/7/26
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = "";
    String name="登陆";
    String onclick = "ShowLoginText()";
    String href = "javascript:;";
    String style = "display: none";
    String error = "";
    String avatar;
    if (session.getAttribute("user")!=null)
    {
        User_c user_c = (User_c) session.getAttribute("user");
        name = user_c.getName();
        avatar=user_c.getAvatar();
        System.out.println(name);
        System.out.println(avatar);
        username = user_c.getUsername();
        onclick = "";
        href = "person.jsp";
        style = "";
        if(session.getAttribute("evaluatelist")==null)
        {
            String url = "Servletevaluate?username="+username;
            request.getRequestDispatcher(url).forward(request,response);
        }
    }
    else
    {
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }
    //foot
    if (session.getAttribute("news")==null)
    {
        request.getRequestDispatcher("/Servletnews?url=person.jsp").forward(request,response);
    }
    if (request.getAttribute("error")!=null)
    {
        error = "error";
    }
%>
<html>
<head>
    <title>个人中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"  charset="UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <%--<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>--%>
</head>
<style>
    .list-group a{
        text-decoration: none;
    }
    th{
        margin: 1em 0px;
        font-size: 1.3em;
        font-weight: 700;
        color: #ec4700;
    }
</style>
<body>
<!--header start here-->
<div style="height: 75px;">
</div>
<input type="hidden" id="error" value="<%=error%>">
<nav class="navbar navbar-fixed-top top-nav my-navbar" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                <span class="sr-only">pid</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="header-left">
                <a href="home.jsp"><img class="menu" src="images/pid-s.png"></a>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active">
                    <a href="home.jsp">首页</a>
                </li>
                <li>
                    <a href="discover_PID.jsp">发现PID</a>
                </li>
                <li>
                    <a href="policy_guide.jsp">政策向导</a>
                </li>
                <li id="nav1">
                    <a href="news.jsp">最新动态</a>
                </li>
                <li id="nav2">
                    <a href="PID_library.jsp">PID图书馆</a>
                </li>
                <li id="nav3">
                    <a href="support_us.jsp">支持我们</a>
                </li>
                <li id="nav4">
                    <a href="friend_s_story.jsp">病友故事会</a>
                </li>
                <li id="nav5">
                    <a href="about_us.jsp">关于我们</a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;" onclick="<%=onclick%>">
                        <%=name%>
                        <b class="caret" style="<%=style%>"></b>
                    </a>
                    <ul class="dropdown-menu" style="<%=style%>">
                        <li>
                            <a href="person.jsp">个人中心</a>
                        </li>
                        <li>
                            <a href="/Servletdestroy">退出</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown" style="display: none" id="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        更多
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="about_us.jsp">关于我们</a>
                        </li>
                        <li>
                            <a href="PID_library.jsp">PID图书馆</a>
                        </li>
                        <li>
                            <a href="support_us.jsp">支持我们</a>
                        </li>
                        <li>
                            <a href="friend_s_story.jsp">病友故事会</a>
                        </li>
                        <li>
                            <a href="news.jsp">最新动态</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!--header end here-->
<!--banner  start here-->
<div class="donate-banner">
    <div class="container">
        <div class="donate-banner-main">
            <div class="col-md-12 donate-banner-left text-center">
                <h3>个人中心</h3>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--banner end here-->
<!--content start here-->
<div class="contents">
    <div class="container">
        <div class="col-md-3 center-block">
            <div style="margin-top: 1em;">
                <ul style="list-style: none" class="list-group">
                    <a onclick="select()"><li class="list-group-item">个人信息</li></a>
                    <a onclick="update()"><li class="list-group-item">修改个人信息</li></a>
                    <a onclick="selectevaluate()"><li class="list-group-item">评论管理</li></a>
                </ul>
            </div>
        </div>
        <div class="col-md-9 selectpersonalinformation">
            <table class="table">
                <thead>
                <tr>
                    <th>个人信息</th>
                </tr>
                </thead>
                <tr>
                    <td>头像: <div style="width: 64px;height: 64px; border-radius:50px;overflow: hidden;"><img style="width: 64px;height:64px;" src="<c:out value="${user.avatar}"></c:out>" alt=""></div></td>
                </tr>
                <tr>
                    <td>账号：  <c:out value="${user.username}"></c:out></td>
                </tr>
                <tr>
                    <td>用户名： <c:out value="${user.name}"></c:out></td>
                </tr>
                <tr>
                    <td>邮箱地址：<c:out value="${user.mail}"></c:out></td>
                </tr>
                <tr>
                    <td>手机号码：<c:out value="${user.phone}"></c:out></td>
                </tr>
                <tr>
                    <td>QQ号：  <c:out value="${user.qqnumber}"></c:out></td>
                </tr>
                <tr>
                    <td>微信号： <c:out value="${user.wechatnumber}"></c:out></td>
                </tr>

            </table>
        </div>
        <div class="col-md-9 updatepersonalinformation" style="display: none;">
            <form action="/Servletupdate_user" method="post" enctype="multipart/form-data">
            <table class="table" style="margin-top: 15px;">
                <thead>
                <tr>
                    <th>修改个人信息</th>
                </tr>
                </thead>
                <tr>
                    <td>账号：&emsp;&emsp;<input type="text" name="username" value="<c:out value="${user.username}"></c:out>" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>昵称：&emsp;&emsp;<input type="text" name="name" id="name_p" value="<c:out value="${user.name}"></c:out>"><span style="color: red; display: none" id="nullname">&emsp;昵称不能为空</span></td>
                </tr>
                <tr>
                    <td>密码：&emsp;&emsp;<input type="password" id="password_p" name="password" value="<c:out value="${user.password}"></c:out>"></td>
                </tr>
                <tr>
                    <td>确认密码：<input type="password" id="repassword_p" value="<c:out value="${user.password}"></c:out>"><span style="color: red; display: none" id="nullpassword">&emsp;两次密码不一致</span></td>
                </tr>
                <tr>
                    <td>邮箱地址：<input type="text" id="mail_p" name="mail" value="<c:out value="${user.mail}"></c:out>"></td>
                </tr>
                <tr>
                    <td>手机号码：<input type="text" id="phone_p" name="phone" value="<c:out value="${user.phone}"></c:out>"></td>
                </tr>
                <tr>
                    <td>QQ号： &emsp;<input type="text" id="qqnumber_p" name="qqnumber" style="margin-left: 1px;" value="<c:out value="${user.qqnumber}"></c:out>"></td>
                </tr>
                <tr>
                    <td>微信号：&emsp;<input type="text" id="wechatnumber_p" name="wechatnumber" value="<c:out value="${user.wechatnumber}"></c:out>"></td>
                </tr>
                <tr>
                    <td>头像: <div style="width: 64px;height: 64px; border-radius:50px;overflow: hidden;display: inline;margin-left: 39px;"><img style="width: 64px;height:64px;" src="<c:out value="${user.avatar}"></c:out>" alt=""></div><input name="uploadfile" type="file" /></td>
                </tr>
                <%--<p><span>头像</span></p><td colspan="2"><input name="uploadfile" type="file" /></td>--%>
                <tr>
                    <td>
                        <input type="submit" id="submit_p" value="提交">
                    </td>
                </tr>
            </table>
            </form>
        </div>
        <div class="col-md-9 selectevaluate" style="display: none">
            <table class="table">
                <thead>
                <tr>
                    <th>评论管理</th>
                </tr>
                </thead>
            </table>
            <c:forEach items="${evaluatelist}" var="el">
                <div class="new-evaluate">
                    <h4>${el.title_e}</h4>
                    <p style="margin-bottom: 10px;">${el.text_e}</p>
                    <p>${el.date_e}&emsp;&emsp;<a href="Servletevaluatedelete?id=${el.id}">删除</a></p>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!--content end here-->
<!--footer start here-->
<div class="footer" id="footer">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-4 footer-top">
                <h3>关于我们 </h3>
                <p>正式成立于2017年2月8日，组织致力于宣传原发性免疫缺陷病，让社会对原发性免疫缺陷有更广泛的认知，减少基层医院的误诊漏诊，让更多患儿及时确诊，为更多患儿争取社会福利。组织今后将加强与医疗机构的联系，争取更好地为患者提供服务。</p>
            </div>
            <div class="col-md-2 footer-top" id="footer-nav">
                <h3>导航 </h3>
                <ul>
                    <li><a href="home.jsp"> 首页</a></li>
                    <li><a href="about_us.jsp"> 关于我们</a></li>
                    <li><a href="discover_PID.jsp"> 发现PID</a></li>
                    <li><a href="PID_library.jsp"> PID图书馆</a></li>
                    <li><a href="support_us.jsp"> 支持我们</a></li>
                    <li><a href="policy_guide.jsp"> 政策向导</a></li>
                    <li><a href="friend_s_story.jsp"> 病友故事会</a></li>
                    <li><a href="news.jsp"> 最新动态</a></li>
                </ul>
                <div class="clear fix"> </div>
            </div>
            <div class="col-md-4 footer-top">
                <h3>最新动态</h3>
                <c:forEach begin="0" end="0" items="${news}" var="news">
                    <div class="news-footer">
                        <h4>${news.title_n}</h4>
                        <p>${news.abstract_n}</p>
                        <div class="col">
                            <p>${news.date_n}</p>
                        </div>
                    </div>
                </c:forEach>
                <div class="clear fix"> </div>
            </div>
            <div class="col-md-2 footer-top" id="footer-contact">
                <h3>联系我们</h3>

                <p>QQ群：
                    <a>295090825   </a>
                    <img src="images/qqqun_ewm.png">
                </p>
                <p>微信公众号:
                    <a href="mailto:example@gmail.com">China_PID</a>
                    <img src="images/gzh_ewm.png">
                </p>
            </div>
            <div class="clear fix"> </div>
        </div>
    </div>
</div>
<!--/footer end here-->
<!--copyright strat here-->
<div class="copyright">
    <div class="container">
        <div class="copy-right-main">
            <div class="col-md-6 copy-left">
                <p>Copyright &copy; 2017-2018 ylc.All Rights Reserved.</p>
            </div>
            <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"></span></a>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--copyright end here-->
</body>
</html>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/js_l.js"></script>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<script type="text/javascript" src="js/layer/layer.js"></script>
<script>
    function select(){
        $(".updatepersonalinformation").css("display","none");
        $(".selectpersonalinformation").css("display","inline");
        $(".selectevaluate").css("display","none");
    }
    function update() {
        $(".updatepersonalinformation").css("display","inline");
        $(".selectpersonalinformation").css("display","none");
        $(".selectevaluate").css("display","none");
    }
    function selectevaluate() {
        $(".selectevaluate").css("display","inline");
        $(".selectpersonalinformation").css("display","none");
        $(".updatepersonalinformation").css("display","none");
    }
</script>
<script>
    $(".updatepersonalinformation input").keyup(function () {
        if ($("#name_p").val().length !=0 && $("#password_p").val()==$("#repassword_p").val())
        {
            $("#submit_p").removeAttr("disabled");
            $("#nullname").css("display","none");
            $("#nullpassword").css("display","none");
        }
        else
        {
            $("#submit_p").attr("disabled","disabled");
            if ($("#name_p").val().length ==0)
            {
                $("#nullname").css("display","inline");
            }
            if($("#name_p").val().length !=0)
            {
                $("#nullname").css("display","none");
            }
            if ($("#password_p").val()!=$("#repassword_p").val())
            {
                $("#nullpassword").css("display","inline");
            }
            if ($("#password_p").val()==$("#repassword_p").val())
            {
                $("#nullpassword").css("display","none");
            }
        }
    })
    $(window).ready(function () {
        if($("#error").val()=="error")
        {
            alert("删除失败");
        }
    })
</script>