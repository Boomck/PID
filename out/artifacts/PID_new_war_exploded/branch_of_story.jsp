<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="Entity.FriendsStory" %>
<%@ page import="Entity.User_c" %>
<%--
  Created by IntelliJ IDEA.
  User: BOOM
  Date: 2018/7/16
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    FriendsStory friendsStory=null;
    String title_f=null;
    String text_f=null;
    String source_f=null;
    String success = null;
    String islogin = "yes";
    String title_u = null;
    if (request.getAttribute("friendsStory")==null)
    {
        String title = request.getParameter("title");
        request.getRequestDispatcher("/Servletbranch_of_story?title="+java.net.URLEncoder.encode(title,"UTF-8")).forward(request,response);
    }
    else
    {
        friendsStory = (FriendsStory)request.getAttribute("friendsStory");
        friendsStory.setText_f(friendsStory.getText_f().replace("\r","</br>&emsp;&emsp;"));
        friendsStory.setSource_f("作者|"+friendsStory.getSource_f());
        title_f = friendsStory.getTitle_f();
        text_f = friendsStory.getText_f();
        source_f = friendsStory.getSource_f();
        title_u = java.net.URLEncoder.encode(friendsStory.getTitle_f(),"UTF-8");
    }
    String name="登陆";
    String onclick = "ShowLoginText()";
    String href = "javascript:;";
    String style = "display: none";
    if (session.getAttribute("user")!=null)
    {
        User_c user_c = (User_c) session.getAttribute("user");
        name = user_c.getName();
        onclick = "";
        href = "person.jsp";
        style = "";
    }
    if (session.getAttribute("news")==null)
    {
        request.getRequestDispatcher("/Servletnews?url=branch_of_story.jsp").forward(request,response);
    }
    if (request.getAttribute("success")!=null)
    {
        success = (String) request.getAttribute("success");
    }
    if (session.getAttribute("user") == null)
    {
        islogin = "no";
    }
%>
<html>
<head>
    <title>branch_of_story</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="css/verify.css" rel="stylesheet" type="text/css" media="all" />
    <!--web-fonts-->
    <!--js-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta charset="UTF-8">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/js_l.js"></script>
    <script type="text/javascript" src="js/verify.js" ></script>
    <script type="text/javascript" src="js/layer/layer.js"></script>
</head>
<body>
<!--header start here-->
<div style="height: 75px;"></div>
<input type="hidden" id="success" value="<%=success%>">
<input type="hidden" id="islogin" value="<%=islogin%>">
<input type="hidden" id="title" value="<%=title_f%>">
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
<!--nav end here-->
<!--banner  start here-->
<div class="donate-banner">
    <div class="container">
        <div class="donate-banner-main">
            <div class="col-md-12 donate-banner-left text-center">
                <h3>病友故事</h3>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--banner end here-->
<!--getinvoled start here-->
<div class="contant">
    <div class="container">
        <div class="contant-main">
            <div class="col-md-8 contant-left">
                <h3><%=title_f%></h3>
                <%--<p><c:out value="${friendsStory.text_f}"></c:out></p>--%>
                <p>&nbsp;&emsp;&emsp;<%=text_f%></p>
                <div class="col-md-2"></div>
                <div class="col-md-8 text-center">
                    <p><%=source_f%></p>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="col-md-4 contant-left">
                <h3>最新评论</h3>
                <c:forEach begin="0" end="9" items="${evaluate}" var="evaluate">
                    <div class="new-evaluate">
                        <div class="" style="width: 32px;height: 32px; border-radius:25px;overflow: hidden; float:left;margin-left:-10px">
                            <img style="width:32px;height:32px;" src="${evaluate.avatar}" alt="">
                        </div>
                        <div class="" style="margin-left: 35px">
                            <h4>${evaluate.name}</h4>
                            <p>${evaluate.text_e}</p>
                            <p>${evaluate.date_e}</p>
                        </div>

                    </div>
                </c:forEach>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--getinvoled end here-->
<!--evaluate start here-->
<div class="evaluate" style="background-color: rgba(153, 153, 153, 0.05);margin-bottom: 1em;">
    <div class="container" style="padding: 0 2em">
        <h3 style="font-size: 1.7em;font-weight: 600;margin-bottom: 1em;color: #ec4700;">发表评论</h3>
        <div class="evaluate-main">
            <form action="/Servletevaluateinsert" method="post">
                <input type="hidden" name="username" value="${user.username}">
                <input type="hidden" name="name" value="${user.name}">
                <input type="hidden" name="avatar" value="${user.avatar}">
                <input type="hidden" name="title" value="<%=title_u%>">
                <textarea class="textarea-bos" name="textarea" id="textarea"></textarea>
                <p id="overlimit">还可再输入200字</p>
                <input id="loginbutton" type="button" onclick="nologin()" value="登陆">
                <input id="submit-bos" type="submit" value="提交">
            </form>
        </div>
    </div>
</div>
<!--evaluate end here-->
<!--footer start here-->
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
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
                    <a>295090825  </a>
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
                <p>Copyright &copy; 2017-2018 ylc.All Rights Reserved.<a onclick="ShowBackstageLoginText()" style="text-decoration: none;">登陆后台</a></p>
            </div>
            <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"></span></a>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--copyright end here-->
<div id="loginBox">
    <div class="login-item" style="margin-top: 15px;"><input  type="text" id="InputUsername" placeholder="请输入用户名" /></div>
    <div class="login-item" style="margin-top: 15px;"><input  type="password" id="InputUserPwd" placeholder="请输入密码"/></div>
    <div id="mpanel3" style="margin-top: 15px; margin-left: 20px;"></div>
    <div class="login-item" style="margin-top: 15px;"><a href="javascript:;" onclick="LoginInbof()">登录</a></div>
    <p>&emsp;&nbsp;没有账号？<a onclick="showregister()" style="text-decoration: none">注册</a></p>
</div>
<div id="registerBox">
    <div class="login-item" style="margin-top: 15px;"><input  type="text" id="Username" placeholder="请输入用户名" /></div>
    <p id="username-p">&nbsp;</p>
    <div class="login-item"><input  type="text" id="Name" placeholder="请输入昵称" /></div>
    <p id="name-p">&nbsp;</p>
    <div class="login-item"><input  type="password" id="Password" placeholder="请输入密码"/></div>
    <p id="password-p">&nbsp;</p>
    <div class="login-item"><input  type="password" id="RePassword" placeholder="请再次输入密码"/></div>
    <p id="repassword-p">&nbsp;</p>
    <div class="login-item"><input  type="text" id="validation" placeholder="请输入密保问题"/></div>
    <p id="validation-p">&nbsp;</p>
    <div class="login-item"><input  type="text" id="valianswer" placeholder="请输入密保问题答案"/></div>
    <p id="valianswer-p">&nbsp;</p>
    <div class="login-item"><a href="javascript:;" onclick="register()">注册</a></div>
</div>
<div id="backstageloginBox">
    <div class="login-item" style="margin-top: 15px;"><input  type="text" id="InputUsername_b" placeholder="请输入用户名" /></div>
    <div class="login-item" style="margin-top: 15px;"><input  type="password" id="InputUserPwd_b" placeholder="请输入密码"/></div>
    <div id="mpanel4" style="margin-top: 15px; margin-left: 20px;"></div>
    <div class="login-item" style="margin-top: 15px;"><a href="javascript:;" id="BackstageLoginbutton">登录</a></div>
</div>
</body>
</html>
<script>
    var number = 200;
    var lenth = 0;
    $("#textarea").keyup(function () {
        lenth = $("#textarea").val().length;
        number = 200-lenth;
        if (number>=0)
        {
            $("#submit-bos").removeAttr("disabled");
            $("#overlimit").html("还可再输入"+number+"字");
        }
        else
        {
            alert("1111");
            $("#overlimit").html("超过字数限制不可提交");
            $("#submit-bos").attr("disabled","disabled");
        }
    })
    $(window).ready(function () {
        if ($("#success").val()=="发表成功"||$("#success").val()=="发表失败")
        {
            alert($("#success").val());
        }
        if ($("#islogin").val() != "yes")
        {
            $("#submit-bos").css("display","none");
            $("#loginbutton").css("display","inline");
        }
        else
        {
            $("#submit-bos").css("display","inline");
            $("#loginbutton").css("display","none");
        }
    })
    function nologin() {
        alert("请先登录");
        ShowLoginText();
    }
</script>
<script>
    $('#mpanel3').codeVerify({
        type : 2,
        figure : 100,	//位数，仅在type=2时生效
        arith : 0,	//算法，支持加减乘，不填为随机，仅在type=2时生效
        width : '140px',
        height : '40px',
        fontSize : '15px',
        btnId : 'Loginbutton',
        ready : function() {
        },
        success : function() {
            LoginInbof();
        },
        error : function() {
            layer.alert("验证码不匹配！",{
                title:"提示",
                icon:5,
            });
        }
    });
    $('#mpanel4').codeVerify({
        type : 2,
        figure : 100,	//位数，仅在type=2时生效
        arith : 0,	//算法，支持加减乘，不填为随机，仅在type=2时生效
        width : '140px',
        height : '40px',
        fontSize : '15px',
        btnId : 'BackstageLoginbutton',
        ready : function() {
        },
        success : function() {
            BackstageLogin();
        },
        error : function() {
            layer.alert("验证码不匹配！",{
                title:"提示",
                icon:5,
            });
        }
    });
</script>
<script>
    $(window).ready(function () {
        if ($("#registermessage").val()=="注册成功"||$("#registermessage").val()=="注册失败")
        {
            alert($("#registermessage").val());
        }
        if ($("#loginerror").val()=="登陆失败")
        {
            alert($("#loginerror").val());
        }
    })
</script>

