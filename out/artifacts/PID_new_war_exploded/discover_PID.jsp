<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="Entity.User_c" %><%--
  Created by IntelliJ IDEA.
  User: BOOM
  Date: 2018/7/16
  Time: 14:05
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
        request.getRequestDispatcher("/Servletnews?url=discover_PID.jsp").forward(request,response);
    }
%>
<html>
<head>
    <title>发现PID</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"  charset="UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/verify.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/js_l.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/layer/layer.js"></script>
    <script type="text/javascript" src="js/verify.js" ></script>
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
                <h3>发现PID</h3>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--banner end here-->
<!--contant start here-->
<div class="contant">
    <div class="container">
        <div class="contant-main">
            <div class="col-md-8 contant-left">
                <h3>什么是PID，PID又会造成什么后果？</h3>
                <p>
                    PID，即原发性免疫缺陷病，是一组少见病，与遗传相关，常发生在婴幼儿，出现反复感染，严重威胁生命。因其中有些可能获得有效的治疗，故及时诊断仍很重要。按免疫缺陷性质的不同，可分为体液免疫缺陷为主、细胞免疫缺陷为主以及两者兼有的联合性免疫缺陷三大类。此外，补体缺陷、吞噬细胞缺陷等非特异性免疫缺陷也属于本组。
                </p>
                <p>
                    2015年国际免疫学会联合会PID专家委员会(PID EC)将PID分为9大类：(1) T淋巴细胞、B淋巴细胞联合免疫缺陷；(2)其他已明确表型的免疫缺陷综合征；(3)抗体免疫缺陷病；(4)免疫失调性疾病；(5)先天性吞噬细胞数目、功能缺陷；(6)天然免疫缺陷；(7)自身炎症性疾病；(8)补体缺陷；(9)自身抗体相关的拟表型原发性免疫缺陷病。
                </p>
                <p>
                    PID的临床表现主要为机体对感染、肿瘤、自身免疫和炎症性疾病易感性增高，由于PID病种较多，临床实践诊疗中仍存在一些差异，具体临床表现也轻重不一。关于PID症状的判断，美国疾病控制中心和JMF原发性免疫缺陷病基金会提出了10条PID预警症状：（1）1年内发生≥ 4次耳部感染；（2）1年内发生≥ 2次严重的鼻窦感染；（3）口服抗生素≥ 2个月，且疗效较差；（4）1年内发生≥ 2次肺炎；（5）婴幼儿生长发育障碍（包括体重不增等）；（6）反复、深部皮肤或器官脓肿；（7）顽固的口腔念珠菌感染或皮肤真菌感染；（8）需静脉使用抗生素的感染；（9）≥ 2次深部感染，包括败血症等；（10）PID阳性家族史。以上10条可以帮助患儿父母更好的了解PID，及早进行PID预测，做到早诊断早治疗。
                </p>

            </div>
            <div class="col-md-4 contant-left">
                <ul class="menu">
                    <li class="level1">
                        <a href="#none">什么是PID</a>
                        <ul class="level2">
                            <li>
                                <a href="#none">我国各类原发性免疫缺陷病的确切发病率尚不清楚，其相对发病百分率大致为体液免疫缺陷占50％，细胞免疫缺陷10％，联合免疫缺陷30％，吞噬细胞功能缺陷6％，补体缺陷4％。</a>
                            </li>
                        </ul>
                    </li>
                    <li class="level1">
                        <a href="#none">PID的先发症状</a>
                        <ul class="level2">
                            <li>
                                <a href="#none">我国各类原发性免疫缺陷病的确切发病率尚不清楚，其相对发病百分率大致为体液免疫缺陷占50％，细胞免疫缺陷10％，联合免疫缺陷30％，吞噬细胞功能缺陷6％，补体缺陷4％。</a>
                            </li>
                        </ul>
                    </li>
                    <li class="level1">
                        <a href="#none">PID的易发人群</a>
                        <ul class="level2">
                            <li>
                                <a href="#none">我国各类原发性免疫缺陷病的确切发病率尚不清楚，其相对发病百分率大致为体液免疫缺陷占50％，细胞免疫缺陷10％，联合免疫缺陷30％，吞噬细胞功能缺陷6％，补体缺陷4％。</a>
                            </li>
                        </ul>
                    </li>
                    <li class="level1">
                        <a href="#none">国内对PID的情况</a>
                        <ul class="level2">
                            <li>
                                <a href="#none">我国各类原发性免疫缺陷病的确切发病率尚不清楚，其相对发病百分率大致为体液免疫缺陷占50％，细胞免疫缺陷10％，联合免疫缺陷30％，吞噬细胞功能缺陷6％，补体缺陷4％。</a>
                            </li>
                        </ul>
                    </li>
                    <li class="level1">
                        <a href="#none">国际对PID的情况</a>
                        <ul class="level2">
                            <li>
                                <a href="#none">我国各类原发性免疫缺陷病的确切发病率尚不清楚，其相对发病百分率大致为体液免疫缺陷占50％，细胞免疫缺陷10％，联合免疫缺陷30％，吞噬细胞功能缺陷6％，补体缺陷4％。</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col-md-4" id="botton-left">
                <h3>寄语</h3>
                <img src="images/happy-childhood.jpg" />
                <p>
                    当你遇见PID患者时，请给予<br>
                    更多的关心，而不是以异样的<br>
                    眼光予以排斥。
                </p>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--/contant end here-->
<!--contant banner start here-->
<div class="contant-banner">
    <div class="container">
        <div class="contant-banner-main">
            <h3>关于诊断</h3>
            <p>
                可借助辅助检查，比如全血细胞计数及分类计数和血小板计数；测试IgG、IgM、IgE和 IgA浓度以及进行抗体功能测试、结合临床+精准基因诊断，综合这些信息才能够对患 者的疾病做出正确的诊断 根据人口统计 ,
                每年我国有 16000000— 18000000婴儿出生， 按PID总发病率约为 1/5000计算，其中应有3000—4000例 新发PID病例。粗略估计目前我国 PID患儿有60000—120000例。由
                于PID种类繁多、异质性强，明
                确诊断较为困难。目前我国PID 确诊率不足5%。大部分PID患 儿未被确诊，没有接受针对性 管理，最终导致死亡。因此， 明确诊断PID是目前学科的重 要任务之一。
            </p>
        </div>
    </div>
</div>
<!--/contant banner end here-->
<!--contant about start here-->
<div class="contant-about">
    <div class="container">
        <div class="contant-about-main">
            <div class="col-md-3 contant-about-top">
                <h3>治疗原则 1</h3>
                <p>
                    保护性隔离患者，<br/>减少接触感染源
                </p>
            </div>
            <div class="col-md-3 contant-about-top">
                <h3>治疗原则 2</h3>
                <p>
                    对症治疗,<br/>慎用免疫抑制类药物
                </p>
            </div>
            <div class="col-md-3 contant-about-top">
                <h3>治疗原则 3</h3>
                <p>
                    使用抗生素,<br/>以清除细菌、真菌感染
                </p>
            </div>
            <div class="col-md-3 contant-about-top">
                <h3>治疗原则 4</h3>
                <p>
                    根据免疫缺陷类型,<br/>给予替代疗法或免疫重建
                </p>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!--/contant about end here-->
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
</html>
<!--js-->
<script type="text/javascript">
    $(".level1").click(function(){
        $(this).find("ul").slideDown();
    })
    $(".level1").mouseleave(function(){
        $(this).find("ul").slideUp();
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



