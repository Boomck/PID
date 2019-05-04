<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="Entity.User_c" %><%--
  Created by IntelliJ IDEA.
  User: BOOM
  Date: 2018/7/16
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
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
        request.getRequestDispatcher("/Servletnews?url=about_us.jsp").forward(request,response);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>关于我们</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"  charset="UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/verify.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!--header start here-->
<div style="height: 75px;"></div>
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
<!--/header end here-->
<!--banner  start here-->
<div class="donate-banner">
    <div class="container">
        <div class="donate-banner-main">
            <div class="col-md-12 donate-banner-left text-center">
                <h3>关于我们</h3>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--banner end here-->
<!--about start here-->
<div class="about">
    <div class="container">
        <div class="about-main">
            <%--<h3>关于我们</h3>--%>
            <div class="col-md-8 about-left">
                <p>
                    在2017年2月8日，PID加油宝贝关爱中心正式成立，组织致力于宣传原发性免疫缺陷病，让社会对原发性免疫缺陷有更广泛对认知，减少基层医院的误诊漏诊，让更多患儿及时确诊，为更多患儿争取社会福利。组织今后将加强与医疗机构对联系，争取更多更好地为患者服务。
                </p>
                <p style="font-size: 12px;">
                    （图片顺序从左到右分别为叨妈，黄如方会长和郭姐。）
                </p>
                <p>
                    2017年4月15日至16日期间，PID加油宝贝中国关爱中心郭姐与叨妈代表组织参加了在上海举办对2017年罕见病租住春季能力建设培训会。会上学习到了很多关于如何组建一个正规病友组织的方法与注意事项，也与其他兄弟组织进行了很多深入的交流，向成功的兄弟组织学习与借鉴成功经验，为将来更好地服务病友打下基础，希望以后能更好地为病友争取福利。感谢罕见病中心给我们提供这次培新机会，让我们能尽快走上正轨，我们也将更好努力将组织建设好，为更多对患者带来帮助！
                </p>
                <p>
                    在2017年2月8日，PID加油宝贝关爱中心正式成立，组织致力于宣传原发性免疫缺陷病，让社会对原发性免疫缺陷有更广泛对认知，减少基层医院的误诊漏诊，让更多患儿及时确诊，为更多患儿争取社会福利。组织今后将加强与医疗机构对联系，争取更多更好地为患者服务。
                </p>
                <p>
                    2017年4月15日至16日期间，PID加油宝贝中国关爱中心郭姐与叨妈代表组织参加了在上海举办对2017年罕见病租住春季能力建设培训会。会上学习到了很多关于如何组建一个正规病友组织的方法与注意事项，也与其他兄弟组织进行了很多深入的交流，向成功的兄弟组织学习与借鉴成功经验，为将来更好地服务病友打下基础，希望以后能更好地为病友争取福利。感谢罕见病中心给我们提供这次培新机会，让我们能尽快走上正轨，我们也将更好努力将组织建设好，为更多对患者带来帮助！
                </p>
            </div>
            <div class="col-md-4 about-right">
                <img src="images/456.jpg">
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--about end here-->
<!--about banner start here-->
<div class="about-banner">
    <div class="container">
        <div class="about-banner-main">
            <div class="col-md-12 about-top">
                <img src="images/123.jpg">
                <h3> 能力建设会与会人员合影</h3>
                <p>
                    在上海举办的2017罕见病组织春季能力建设培训会，大家热烈讨论，十分活跃，对活动十分上心。
                </p>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--about banner end here-->
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
<!--/footer end here-->
<div id="loginBox">
    <div class="login-item" style="margin-top: 15px;"><input  type="text" id="InputUsername" placeholder="请输入用户名" /></div>
    <div class="login-item" style="margin-top: 15px;"><input  type="password" id="InputUserPwd" placeholder="请输入密码"/></div>
    <div id="mpanel3" style="margin-top: 15px; margin-left: 20px;"></div>
    <div class="login-item" style="margin-top: 15px;"><a href="javascript:;" id="Loginbutton">登录</a></div>
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
<!--js-->
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/js_l.js"></script>
<script type="text/javascript" src="js/layer/layer.js"></script>
<script type="text/javascript" src="js/verify.js" ></script>
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
            Login();
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
