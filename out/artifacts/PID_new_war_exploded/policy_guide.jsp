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
        request.getRequestDispatcher("/Servletnews?url=policy_guide.jsp").forward(request,response);
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="css/verify.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
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
<!--banner  start here-->
<div class="donate-banner">
    <div class="container">
        <div class="donate-banner-main">
            <div class="col-md-12 donate-banner-left text-center">
                <h3>政策向导</h3>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--banner end here-->
<!--policy start here-->
<div class="policy">
    <div class="container">
        <div class="policy-main">
            <h3>药品支持</h3>
            <div class="col-md-8 policy-left">
                <p>人力资源和社会保障部23日公布了2017年版国家基本医疗保险、工伤保险和生育保险药品目录。收录西药、中成药2535个药品。</p>
                <p>新版药品目录有5个比较鲜明的特点，其中之一是重点考虑重大疾病治疗药物。治疗癌症、重性精神病、血友病、糖尿病、心脑血管疾病等重大疾病的常用药品基本被纳入了药品目录或谈判药品范围。</p>
                <p>多年来重庆儿童医院赵晓东教授和杨锡强教授持续不断努力，不遗余力地呼吁，免疫缺陷患儿终于盼来了他们的春天。人社部印发2017版药品目录于2017年2月23日公布，明确将原发性免疫球蛋白缺乏症列入静注人免疫球蛋白用药范畴之内,不限制年龄，不限制地域。这对原发性免疫缺陷患者来说，犹如重获新生。这一政策不仅是减轻了病患家庭的经济负担，更是直接挽救了大量患儿的生命，让他们有了重生的希望。</p>
            </div>
            <div class="col-md-4 policy-right">
                <img src="images/webwxgetmsgimg.jpg">
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--about end here-->
<!--video start here-->
<div class="video">
    <div class="container">
        <div class="video-main">
            <a class="play-icon popup-with-zoom-anim" href="#small-dialog5"> <span class="e"> </span> </a>
            <!--video-->
            <div id="small-dialog5" class="mfp-hide">
                <video src="video/xiaoship.mp4" controls style="width: 100%;height: 100%;"></video>
            </div>
        </div>
    </div>
</div>
<!--video end here-->
<!--policy start here-->
<div class="policy">
    <div class="container">
        <div class="policy-main">
            <h3>pid未来展望</h3>
            <div class="col-md-12 policy-left">
                <p>尽管我国PID的治疗在目前的快速发展阶段取得了可喜进展，但仍面临着以下问题亟待努力：（1）完善PID诊断中心协作网和疾病登记网站，为PID的流行病学调查和多中心临床研究奠定信息资源基础。（2）我国仅有的PID抗感染治疗共识内容主要基于单中心、单病种及经验性治疗，尚缺乏针对不同类型PID的抗感染治疗共识或指南，临床实用性有待进一步提高。（3）IVIG替代治疗已成为抗体缺陷PID治疗的重要手段，但多数PID患者IVIG治疗不规范，国内尚缺乏临床数据支撑的IVIG在不同类型PID中的应用指南。（4）新型靶向治疗药物阿那白滞素、卡那单抗、阿巴西普、艾库组单抗和PEG-ADA等尚未被国家药品监督管理局批准，即便短期内这些药物在国内合法上市，亦将因价格昂贵而导致临床应用受限。（5）尽管我国HSCT治疗部分PID已取得良好的效果，但具备开展HSCT治疗资质的单位仅限于少数大型儿科医疗机构，成功率较国际上经验丰富的移植中心尚存一定差距；我国PID患者移植前的感染防护措施严重不足，导致许多PID患者因重症感染丧失生命或影响移植存活率和成功率；另外由于HSCT费用高昂，部分PID患者因经济原因丧失接受移植治疗的最佳时机。（6）我国基因治疗PID尚处于临床前研究起步阶段，在国内启动PID基因治疗临床研究，需要全面提升对PID基因治疗的认识，正确面对基因治疗可能出现的骨髓增生异常综合征、白血病及治疗失败等一系列不良后果，尤其需要获得PID家庭成员、社会大众和政府层面的理解。（7）我们已逐渐注重PID患者的长期随访和慢性病管理，包括防治感染、指导疫苗接种等[20]，但尚未形成患者相关家庭成员、社区工作者和医务人员、幼儿园和学校教师、儿童保健科医生、疫苗接种部门等的整体化管理；对PID患儿及其家庭再生风险的遗传咨询严重不足，与妇产科医生存在脱节现象。实现PID的整体化管理，建立PID精准诊治-遗传咨询-孕前咨询-产前诊断-新生儿筛查多学科联合体，是PID患者及家庭的迫切需要。</p>
                <p>PID属儿童重大罕见疾病，对该类疾病的控制和管理是体现一个国家经济发展和社会进步的标志。国家疾病控制中心逐渐将PID纳入重点关注和正规管理的疾病，政府、公众、企业、慈善基金共同参与PID救助，避免PID患者因经济原因而无法得到积极有效的救治；在高通量测序技术及分子免疫学诊断技术的基础上，实现PID真正意义上的精准医学个体化治疗，是我们未来的努力方向。</p>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--about end here-->
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
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<script type="text/javascript" src="js/js_l.js"></script>
<script type="text/javascript" src="js/layer/layer.js"></script>
<script type="text/javascript" src="js/verify.js" ></script>
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
