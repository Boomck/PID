<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Entity.User_c" %>
<%@ page import="org.apache.catalina.User" %><%--
  Created by IntelliJ IDEA.
  User: BOOM
  Date: 2018/7/16
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"  charset="UTF-8">
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
  <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/verify.css" rel="stylesheet" type="text/css" media="all" />
  <script src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/move-top.js"></script>
  <script type="text/javascript" src="js/easing.js"></script>
  <script type="text/javascript" src="js/js_l.js"></script>
    <script type="text/javascript" src="js/verify.js" ></script>
  <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
  <script type="text/javascript" src="js/layer/layer.js"></script>
</head>
<%
  String name="登陆";
  String registermessage = null;
  String onclick = "ShowLoginText()";
  String href = "javascript:;";
  String style = "display: none";
  String loginerror = null;
  if (request.getAttribute("registermessage")!=null)
  {
    registermessage = (String) request.getAttribute("registermessage");
  }
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
    request.getRequestDispatcher("/Servletnews?url=home.jsp").forward(request,response);
  }
  if (request.getAttribute("loginerror")!=null)
  {
    loginerror = (String) request.getAttribute("loginerror");
  }
%>
<body>
<!--header start here-->
<div style="height: 75px;">
</div>
<input type="hidden" id="registermessage" value="<%=registermessage%>">
<input type="hidden" id="loginerror" value="<%=loginerror%>">
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
<!--banner start here-->
<div id="myCarousel" class="carousel slide"  data-ride="carousel">
  <!-- 轮播（Carousel）指标 -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="button0 active"></li>
    <li data-target="#myCarousel" data-slide-to="1" class="button1"></li>
    <li data-target="#myCarousel" data-slide-to="2" class="button2"></li>
    <li data-target="#myCarousel" data-slide-to="3" class="button3"></li>
  </ol>
  <!-- 轮播（Carousel）项目 -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/banner-4.jpg" alt="First slide">
    </div>
    <div class="item">
      <img src="images/banner-5.jpg" alt="Second slide">
    </div>
    <div class="item">
      <img src="images/banner-6.jpg" alt="Third slide">
    </div>
    <div class="item">
      <img src="images/banner-7.jpg" alt="Fourth slide">
    </div>
  </div>
  <!-- 轮播（Carousel）导航 -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;
  </a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;
  </a>
</div>
<!--- banner Slider Ends Here ---><!--top grid start here-->
<div class="grid">
  <div class="container">
    <div class="row grid-main">
      <div class="grid-top col-md-12">
        <div class="col-md-4 grid-column pid_home">
          <a href="discover_PID.jsp">
            <img src="images/index_ico_findpid.png">
            <h3>发现PID</h3>
            <p>"PID，即原发性免疫缺陷病(primary immunodeficieney diseases，PID)是一组罕见病，与遗传相关，常发生在婴幼儿，出现反复感染，严重威胁生命。".</p>
          </a>
        </div>
        <div class="col-md-4 grid-column pid_home">
          <a href="PID_library.jsp">
            <img src="images/index_ico_library.png">
            <h3>PID图书馆</h3>
            <p>"PID是原发性免疫缺陷病的统称，PID有许多种不同的分类，其中以XLA最常见，此外较为多见得还有：WAS，SCID，CVID，APDS等，进入PID图书馆了解更多有关PID的信息。"</p>
          </a>
        </div>
        <div class="col-md-4 grid-column pid_home">
          <a href="friend_s_story.jsp">
            <img src="images/index_ico_story.png">
            <h3>病友故事会</h3>
            <p>"这里向大家分享了一些PID患者的故事，PID加油宝贝将征集到的文章进行了整理，创建了病友故事会板块，进来看一看都有哪些风趣幽默、感人至深的故事吧！" </p>
          </a>
        </div>
        <div class="grid-bottom col-md-12">
          <div class="col-md-4 grid-column pid_home">
            <a href="news.jsp">
              <img src="images/index_ico_news.png">
              <h3>最新动态</h3>
              <p>"这里存放了PID加油宝贝的各种动态，活动举办、消息发布、资讯新闻都会在这里出现，想要了解更多的PID资讯，进入这个版块看一看哦！" </p>
            </a>
          </div>
          <div class="col-md-4 grid-column pid_home">
            <a href="about_us.jsp">
              <img src="images/index_ico_aboutus.png">
              <h3>关于我们</h3>
              <p>"是否还为自己一个人单独面对病魔而感到力不从心，关注我们的病友故事会，你会发现其实并不只有你一个人有这些苦难，说出你的故事，传递你的信念，大家一起来面对吧" </p>
            </a>
          </div>
          <div class="col-md-4 grid-column pid_home">
            <a href="policy_guide.jsp">
              <img src="images/index_ico_zhengfuu.png">
              <h3>政策向导</h3>
              <p>"PID加油宝贝中国关爱中心正式成立于2017年2月8日，组织致力于宣传与咨询原发性免疫缺陷病，让社会对原发性免疫缺陷有更广泛的认知，减少基层医院的误诊漏诊。" </p>
            </a>
          </div>
          <div class="clearfix"> </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--/top grid end here-->
<!--video-banner start here-->
<div class="video">
  <div class="container">
    <div class="video-main">
      <a class="play-icon popup-with-zoom-anim" href="#small-dialog5"> <span class="e"> </span> </a>
      <!--video-->
      <div id="small-dialog5" class="mfp-hide">
        <video src="/video/xiaoship.mp4" controls style="width: 100%;height: 100%;"></video>
      </div>
    </div>
  </div>
</div>
<!--/video-banner end here-->
<!--services start here-->
<div class="services">
  <div class="container">
    <div class="services-main">
      <div class="col-md-7 services-left">
        <div class="service-top">
          <h3> 我们的组织活动</h3>
          <h4>近期的重大活动</h4>
          <h5>2017重儿病友会</h5>
          <p>9月15日上午有重庆医科大学附属儿童医院风湿免疫科举办的一年一度的原发性免疫缺陷并病友会在重医6号楼回忆一厅顺利举行。此次回忆吸引了来自全国各地攻击五十余名患儿及家属参与。病友会上各位资深医生还为远道而来的患儿家长们提供了义诊环节，并有针对性的抽取血样以研究。讲座内容还对我们患有组织会前总结的各类关注问题进行一一解答，让家长们都听得懂，看的明白。</p>
          <div class="bwn">
            <a href="news.jsp"> 了解更多</a>
          </div>
        </div>
        <div class="clearfix"> </div>
      </div>
      <div class="col-md-5 services-right">
        <img src="images/pid_logo.jpg" >
      </div>
      <div class="clearfix"> </div>
    </div>
  </div>
</div>
<!--/services end here-->
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
<script>
    function ZiShiYing() {
        var height = $(".carousel-inner img").eq(0).height() ||
            $(".carousel-inner img").eq(1).height() ||
            $(".carousel-inner img").eq(2).height() ||
            $(".carousel-inner img").eq(3).height()
        $(".carousel-control").css('line-height', height * 0.9 + "px");
        $(".carousel .left,.carousel .right").css('font-size', height * 0.4 + "px");
    };
    ZiShiYing();
    $(window).resize(function () {
        ZiShiYing();
    });
</script>
<!--video js start here-->
<script>
    $(document).ready(function() {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });
    });
</script>
<!--video js end here-->
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
</html>
<!--js-->


