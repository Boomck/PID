<%@ page import="Entity.User_c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: BOOM
  Date: 2018/7/16
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
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
        request.getRequestDispatcher("/Servletnews?url=support_us.jsp").forward(request,response);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"  charset="utf-8">
    <title>helpus</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="css/verify.css" rel="stylesheet" type="text/css" media="all" />

    <style type="text/css">
        body,td,th {
            font-family: "Open Sans", sans-serif;
        }
    </style>
</head>
<body>
<div style="height: 75px;">
</div>
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
<!--donate start here-->
<div class="donate-banner">
    <div class="container">
        <div class="donate-banner-main">
            <div class="col-md-6 donate-banner-left">
                <h3>支持我们 </h3>
            </div>
            <div class="col-md-6 donate-banner-right">
                <ul>
                    <li>
                        <a href="#"> <span class="fa"> </span></a>
                    </li>
                    <li>
                        <a href="#"> <span class="tw"> </span></a>
                    </li>
                    <li>
                        <a href="#"> <span class="g"> </span></a>
                    </li>
                    <li>
                        <a href="#"> <span class="e"> </span></a>
                    </li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<div class="donate">
    <div class="container">
        <div class="donate-main center-block">
            <div id="helpus" class="donate-top text-center" style="display: none">
                <div class="col-md-12">
                    <div class="col-md-6 center-block qrcode">
                        <h3>qq群</h3>
                        <img src="images/qqqun_ewm.png">
                    </div>
                    <div class="col-md-6 center-block qrcode">
                        <h3>微信公众号</h3>
                        <img src="images/gzh_ewm.png">
                    </div>
                    <input type="submit" value="返回" class="back-h">
                </div>

            </div>
            <div class="col-md-12 donate-top" style="display: none" id="joinus">
                <div class="col-md-5">
                    <img src="images/business.jpg">
                </div>
                <div class="col-md-7 volunteer">
                    <h3>成为志愿者</h3>
                    <p>
                        关于我们正式成立于2017年2月8日，组织致力于宣传原发性免疫缺陷病，让社会对原发性免疫缺陷有更广泛的认知，减少基层医院的误诊漏诊，让更多患儿及时确诊，为更多患儿争取社会福利。组织今后将加强与医疗机构的联系，争取更好地为患者提供服务。正式成立于2017年2月8日，组织致力于宣传原发性免疫缺陷病，让社会对原发性免疫缺陷有更广泛的认知，减少基层医院的误诊漏诊，让更多患儿及时确诊，为更多患儿争取社会福利。组织今后将加强与医疗机构的联系，争取更好地为患者提供服务。
                    </p>

                    <input type="button" value="返回" class="back-j">
                </div>
            </div>
            <div class="col-md-6 donate-top" id="helpus-div">
                <h3>支持我们</h3>
                <p>我们将会把捐款用于：<br>1.用于宣传原发性免疫缺陷病的各种活动，线上线下，开病友会，拍摄宣传片等。<br>2.积极配合并参与免疫缺陷全国重点医院专家及团体举办的各类有益于我们疾病及病友组织的活动。<br>
                    3.探望及救助困难病友，为急于求助的患友献爱心</p>
                <input type="submit" value="支持我们" class="helpus">
            </div>
            <div class="col-md-6 donate-top" id="joinus-div">
                <h3>加入我们</h3>
                <p>我们都期待奇迹，可是没人站出来，就永远没有奇迹，我们都希望孩子们得到善待，得到重视，得到救治，可是你做了什么？只是每天哭泣吗？只是每天怨命运吗？埋头苦干挣钱的确可以使你尽量能够负担医药费，那除了这些，你可以告诉孩子未来的路是怎样的吗？<br>我相信正是因为我们的价值观相同，才有了我们今天的组织。</p>
                <input type="submit" value="加入我们" class="joinus">
                <p></p>
            </div>
            <div class="submission-of-success text-center donate-top" style="display: none">
                <h3>感谢您的支持，请等待我们的联系！</h3>
                <img src="images/pid-3.png">
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--dinate end here-->
<!--footer strat here-->
<div class="footer" id="footer">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-4 footer-top">
                <h3>关于我们 </h3>
                <p>正式成立于2017年2月8日，组织致力于宣传原发性免疫缺陷病，让社会对原发性免疫缺陷有更广泛的认知，减少基层医院的误诊漏诊，让更多患儿及时确诊，为更多患儿争取社会福利。组织今后将加强与医疗机构的联系，争取更好地为患者提供服务。</p><br>
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
<!--footer end here-->
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
<!--copyright end here-->
</body>
</html>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<script type="text/javascript" src="js/js_l.js"></script>
<script type="text/javascript" src="js/layer/layer.js"></script>
<script type="text/javascript" src="js/verify.js" ></script>
<script>
    $(document).ready(function(e) {
        $(".joinus").click(function(e) {
            $("#joinus").fadeToggle();
            $(".joinus").toggle();
            $("#joinus-div").toggle();
            $("#helpus-div").toggle();
            $(".helpus").toggle();
        });
        $(".back-j").click(function(e) {
            $("#joinus").toggle();
            $("#joinus-div").fadeToggle();
            $("#helpus-div").fadeToggle();
            $(".joinus").fadeToggle();
            $(".helpus").fadeToggle();
            $('#FirstName').val('');
            $('#LastName').val('');
            $('#EmailAddress').val('');
            $('#Phone').val('');
            $('#Address').val('');
        });
    });
    $(document).ready(function(e){
        $(".helpus").click(function(e){
            $("#helpus").fadeToggle();
            $(".helpus").toggle();
            $("#joinus-div").toggle();
            $("#helpus-div").toggle();
            $(".joinus").toggle();
        });
        $(".back-h").click(function(e){
            $("#helpus").toggle();
            $("#joinus-div").fadeToggle();
            $("#helpus-div").fadeToggle();
            $(".helpus").fadeToggle();
            $(".joinus").fadeToggle();
        })
    })
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
