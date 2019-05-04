<%@ page import="Entity.User_c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: BOOM
  Date: 2018/7/16
  Time: 14:07
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
        request.getRequestDispatcher("/Servletnews?url=PID_library.jsp").forward(request,response);
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
</head>
<style>
</style>
<body>
<div style="height: 75px;">
</div>
<!--nav start here-->
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
<div class="donate-banner" style="margin-bottom: 0px;">
    <div class="container">
        <div class="donate-banner-main">
            <div class="col-md-12 donate-banner-left text-center">
                <h3>PID图书馆</h3>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--banner end here-->
<!--top grid start here-->
<div class="grid">
    <div class="container">
        <div class="row grid-main">
            <div class="grid-top">
                <div class="col-md-4 grid-column pid">
                    <a id="pid-1" class="pid" href="#">
                        <img src="images/X.png">
                        <h3>XLA( X–连锁无丙种球蛋白血症)</h3>
                        <p>
                            X-连锁无丙种球蛋白血症（XLA）是由于人类B细胞系列发育障碍引起的原发性免疫缺陷病，为原发性B细胞缺陷的典型代表。也称为先天性低丙种球蛋白血症。几乎仅男孩发病。以反复发生细菌性感染为主要临床特征。</p>
                    </a>
                </div>
                <div class="col-md-4 grid-column pid">
                    <a id="pid-2" class="pid" href="#">
                        <img src="images/W.png">
                        <h3>WAS（湿疹血小板减少伴免疫缺陷综合征）</h3>
                        <p>
                            湿疹血小板减少伴免疫缺陷综合征又名Wiskott-Aldrich综合征（WAS），是一种X-连锁的原发性免疫缺陷病，以免疫缺陷、湿疹和血小板减少三联征为典型临床表现。</p>
                    </a>
                </div>
                <div class="col-md-4 grid-column pid">
                    <a id="pid-3" class="pid" href="#">
                        <img src="images/S.png">
                        <h3>SCID（重症联合免疫缺陷）</h3>
                        <p>
                            由于淋巴样干细胞先天性分化异常，婴儿生后缺乏T细胞和B细胞，故使体液免疫和细胞免疫均发生缺陷。重症联合免疫缺陷（SCID）可分为X-性联遗传型、常染色体隐性遗传型和散发型，属于联合免疫缺陷病的重型。</p>
                    </a>
                </div>
                <!--				z-->
            </div>
            <div class="grid-bottom">
                <div class="col-md-4 grid-column pid">
                    <a id="pid-4" class="pid" href="#">
                        <img src="images/C.png">
                        <h3>CVID（普通多变型免疫缺陷）</h3>
                        <p>
                            普通变异型免疫缺陷即普通常见变异型免疫缺陷病（CVID），是一种常见的低丙种球蛋白血症，曾被称为迟发性（或成人型）低丙种球蛋白血症。为一组病因不同的，主要影响抗体合成的原发性免疫缺陷病。 </p>
                    </a>
                </div>
                <div class="col-md-4 grid-column pid">
                    <a id="pid-5" class="pid" href="#">
                        <img src="images/A.png">
                        <h3>APDS（磷脂酰肌醇3－激酶δ综合征）</h3>
                        <p>
                            磷脂酰肌醇-3激酶（PI3K）δ综合征（activated phosphoinositide 3-kinase
                            syndrome，APDS）表现为衰老T细胞积聚、淋巴结肿大、免疫缺陷与自身免疫。 </p>
                    </a>
                </div>
                <div class="col-md-4 grid-column pid">
                    <a id="pid-6" href="#">
                        <img src="images/bu.png">
                        <h3>补体缺陷</h3>
                        <p>在补体系统的组成成分中，几乎每一种可有遗传缺陷。大多数补体遗传缺陷属常染色体隐性遗传，少数为常染色体显性遗传，而备解素缺陷则属X染色体连锁隐性遗传。补体缺乏常伴发免疫性疾病及反复细菌感染。</p>
                    </a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!--/top grid end here-->
<!--library start here-->
<div class="library" id="library-1">
    <div class="container">
        <div class="library-main">
            <h3>XLA( X–连锁无丙种球蛋白血症)</h3>
            <div class="col-md-7 library-left">
                <p>X-连锁无丙种球蛋白血症（XLA）是由于人类B细胞系列发育障碍引起的原发性免疫缺陷病，为原发性B细胞缺陷的典型代表。也称为先天性低丙种球蛋白血症。仅男孩发病。以反复发生细菌性感染为主要临床特征。</p>
                <h4>病因</h4>
                <p>为Bruton酪氨酸激酶（Btk）基因突变。</p><br/>
                <h4>临床表现</h4>
                <p>
                    该病几乎仅见于男孩，约有近半数病儿可询问到家族史。由于母体IgG可通过胎盘进入胎儿血液循环，故患儿一般在出生后数月内可不出现任何症状。随着母体IgG的不断分解代谢而逐渐减少，病儿多于生后4～12个月开始出现感染症状。</p>
                <br/>
            </div>
            <div class="col-md-5 library-right">
                <img src="images/policy-guide-1.jpg">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="functional-keys" id="back-library-1">
            <img src="images/back.png" alt="返回">
            <p class="text-back">返回PID图书馆</p>
        </div>
        <!--下面的内容会不受图片约束-->
        <div class="col-md-12 library-right">
            <h5>1.反复感染</h5>
            <p>
                最突出的临床表现是反复严重的细菌性感染，尤以荚膜化脓性细菌，如溶血性链球菌、嗜血性流感杆菌、金黄色葡萄球菌和假单胞菌属感染最为常见。对革兰阴性杆菌如致病性大肠埃希杆菌、铜绿假单胞菌、变形杆菌、沙雷菌等的易感性也明显增高。</p>
            <p>
                XLA病儿对一般病毒的抵抗能力尚好，但对某些肠道病毒，如埃可病毒、柯萨奇病毒及脊髓灰质炎病毒的抵抗能力甚差。应注意口服脊髓灰质炎活疫苗可引起患儿肢体瘫痪。XLA患儿合并上述病毒感染者，也可发生皮肌炎样综合征。也有报道并发卡氏肺囊虫感染者。</p>
            <br/>
            <h5>2.其他表现</h5>
            <p>
                易发生过敏性和自身免疫性疾病。包括自身免疫溶血性贫血、类风湿性关节炎、免疫性中性粒细胞减少、脱发、蛋白质丢失性肠病、吸收不良综合征和淀粉样变性。关节炎多属较大的关节，如膝和肘关节，患部肿胀，运动受限，关节面骨质破坏不明显。血沉正常，类风湿因子和抗核抗体阴性。
            <p/><br/>
            <h5>3.体格检查</h5>
            <p>反复感染引起慢性消耗性体质，苍白、贫血、精神萎靡。扁桃体和腺样体很小或缺如，浅表淋巴结及脾脏均不能触及，鼻咽部侧位X线检查可见腺样体阴影缺乏或变小。</p>
            <p>
                根据出生4个月后反复化脓感染、男孩发病、血清各类Ig和循环中B淋巴细胞显著减少，以及母系家族中有类似表现的男性患者等，不难做出诊断。鼻咽部侧位X线检查显示缺少腺样体组织，但胸部X线检查可见胸腺影。局部抗原刺激后，引流区淋巴结中仍缺少浆细胞。婴儿直肠黏膜活检极有意义，健康婴儿在生后1个月直肠黏膜就有大量浆细胞，患者则缺少浆细胞。</p>
            <br/>
            <h4>检查</h4>
            <p>外周血缺乏B细胞和血清免疫球蛋白（包括IgG，IgA，IgM和IgE）明显下降是该病的主要实验室特征。</p><br/>
            <h5>1.病儿血清总Ig</h5>
            <p>一般不超过200～250mg/dl;IgG可能完全测不到，少部分病例可达200～300mg/dl，但一般低于100mg/dl;IgM和IgA微量或测不出。</p><br/>
            <h5>2.抗体反应</h5>
            <p>同族红细胞凝集素（抗A及抗B血型抗体）缺如，即使多次白喉类毒素注射，锡克试验也不能转为阴性。特异性抗体反应缺乏（包括T细胞依赖性和T细胞非依赖性抗原）。</p><br/>
            <h5>3.B细胞数量和功能</h5>
            <p>外周血白细胞总数可在正常范围，淋巴细胞数量正常或轻度下降，成熟B细胞缺如。骨髓B细胞和浆细胞缺如，可见少量前B细胞。</p><br/>
            <h5>4.产前检查和突变基因携带者检测</h5>
            <p>
                具有阳性家族史的女性，妊娠时应进行产前检查，以明确胎儿是否罹患XLA。可先检查羊水细胞判断其性别，如为男性（XY），应进一步通过检查羊水或脐带血B细胞数量。也可采用DNA序列测定了解Btk基因突变或发现与Btk紧密连接的复合基因片段（DXS178）是否存在的方法来确诊。后面两种方法还可用于发现突变基因携带者。
                常规做X线胸片、B超等检查。反复肺部感染可见支气管扩张，关节腔积液，鼻咽部侧位X线检查可见腺样体阴影缺乏或变小。</p><br/>
            <h4>治疗</h4>
            <p>IVIG替代疗法，可控制大多数XLA患儿的感染症状、全身状况迅速改善，伴发病症如关节疼痛、吸收不良和贫血等也明显缓解。IVIG治疗对预防和治疗肠道病毒感染，如急性或慢性柯萨奇和埃可病毒尤为重要。
                IVIG治疗宜早开始，以免发生感染所致不可逆性器质性损害。大剂量（400mg/kg，每3～4周1次）明显优于小剂量（200mg/kg，每3～4周1次）疗法;但用量应个体化，以血清IgG浓度上升到1000mg/dl为度。少数病例IVIG治疗效果很不理想，其原因可能是：治疗太晚、剂量不足、IVIG不能代替分泌型IgA和IVIG的抗体谱有限。各种支持疗法，包括营养、生活及卫生条件的改善，预防感染的发生，适当的体育锻炼，良好心理状态的维护，对各种并发症的预防和治疗等。</p>
            <br/>
            <h4>预后</h4>
            <p>
                近年早期诊断和常规使用IVIG替代治疗使本病的预后大为改观，均能健康存活，年龄最大者已70岁。凡未接受正规IVIG治疗者，大约50%以上伴发慢性肺部感染，且常有阻塞性肺部疾病或肺源性心脏病，患儿很少能度过幼儿期。伴发慢性播散性肠道病毒感染者也不少见。另有约2%的病例因伴发淋巴网状组织恶性肿瘤而死亡。</p>
            <br/>
        </div>
    </div>
</div>
<div class="library" id="library-2">
    <div class="container">
        <div class="library-main">
            <h3>WAS（湿疹血小板减少伴免疫缺陷综合征）</h3>
            <div class="col-md-5 library-right">
                <img src="images/policy-guide-1.jpg">
            </div>
            <div class="col-md-7 library-left">
                <p>
                    湿疹血小板减少伴免疫缺陷综合征又名Wiskott-Aldrich综合征（WAS），是一种X-连锁的原发性免疫缺陷病，以免疫缺陷、湿疹和血小板减少三联征为典型临床表现，不典型者可主要表现为血小板减少，而无明显免疫缺陷表现，此时需与特发性血小板减少性紫癜鉴别。血液系统表现常较突出，生后即可发生出血倾向，包括紫癜、黑便、血尿等，血小板明显减少，血小板体积变小。</p>
                <br/>
                <h4>诊断</h4>
                <p>
                    血清IgM水平下降，IgG水平轻度降低或正常，IgA和IgE可升高，外周血B细胞数量明显增加，而T细胞数量显著减少。本病诊断标准为：男性婴儿反复感染、湿疹、血小板减少、出血性皮疹并伴有血清IgA和IgE增加、IgM减少、同型血凝素缺乏，对多糖蛋白的抗体反应减弱。血小板体积减小特别有助于WAS患儿的诊断。</p>
                <br/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="functional-keys" id="back-library-2">
            <img src="images/back.png" alt="返回">
            <p class="text-back">返回PID图书馆</p>
        </div>
        <div class="col-md-12 library-right">
            <h4>治疗</h4>
            <p>本病主要治疗手段包括干细胞移植重建免疫功能，出血顽固者可考虑脾切除。药物治疗对预防和治疗感染亦十分重要。</p><br/>
            <h4>相关药物</h4>
            <h5>IVIG 免疫替补疗法</h5>
            <p>IVIG替代疗法，可控制大多数XLA患儿的感染症状、全身状况迅速改善，伴发病症如关节疼痛、吸收不良和贫血等也明显缓解。IVIG治疗对预防和治疗肠道病毒感染，如急性或慢性柯萨奇和埃可病毒尤为重要。
                IVIG治疗宜早开始，以免发生感染所致不可逆性器质性损害。大剂量（400mg/kg，每3～4周1次）明显优于小剂量（200mg/kg，每3～4周1次）疗法;但用量应个体化，以血清IgG浓度上升到1000mg/dl为度。少数病例IVIG治疗效果很不理想，其原因可能是：治疗太晚、剂量不足、IVIG不能代替分泌型IgA和IVIG的抗体谱有限。各种支持疗法，包括营养、生活及卫生条件的改善，预防感染的发生，适当的体育锻炼，良好心理状态的维护，对各种并发症的预防和治疗等。</p>
            <br/>
            <h5>选择原则</h5>
            <p>1、 典型WAS病人需于确诊后开始使用抗菌药物预防肺孢子虫感染。</p>
            <p>2、 感染频发或严重感染时可使用IVIG，维持血清IgG于正常水平。</p>
            <p>3、 现症感染存在时需选用敏感抗生素治疗，以尽快清除感染。</p><br/>
            <h4>建议</h4>
            <p>1、出血的处理十分关键，长期监测外周血血小板水平并适时使用成分输血可在一定时期内保全患儿生命。</p>
            <p>2、严重、反复出血时可作脾切除。</p>
            <p>3、具有典型三联症表现者预后差，需行干细胞移植以重建机体免疫功能。免疫配型以正常同胞兄妹为最佳供体。</p><br/>
            <h4>治疗说明</h4>
            <p>
                应重视对症治疗。严重出血可输新鲜血小板，但要小心，因有自身抗体增多的趋势。虽然有的病儿在行脾切除术后，血小板增加，出血减轻，但增加了严重感染的危险性，常使病儿死于败血症，因此应取慎重态度。全身用肾上腺皮质激素治疗无效，且加重已有的免疫功能低下，可局部治疗慢性湿疹。有感染时给有效抗生素。但勿肌注丙种球蛋白，以免局部出血。定期输入血浆对控制感染是有效的。不少报告应用转移因子成功。胸腺素及胸腺移植的应用还在实验阶段。成功的骨髓移植可使免疫功能正常，纠正血小板减少。</p>
            <br/>
        </div>
    </div>
</div>
<div class="library" id="library-3">
    <div class="container">
        <div class="library-main">
            <h3>SCID（重症联合免疫缺陷）</h3>
            <div class="col-md-7 library-left">
                <p>
                    由于淋巴样干细胞先天性分化异常，婴儿生后缺乏T细胞和B细胞，故使体液免疫和细胞免疫均发生缺陷。重症联合免疫缺陷（SCID）可分为X-性联遗传型、常染色体隐性遗传型和散发型，属于联合免疫缺陷病的重型。</p>
                <br/>
                <h4>病因</h4>
                <p>
                    本病为多基因遗传疾病。患者均具有T细胞和B细胞系统明显缺陷，以伴性或常染色体隐性遗传方式（如Swiss型无γ-球蛋白血症）遗传。大多数患者是男孩，50%～60%呈性联隐性遗传方式，也有常染色体隐性遗传方式及散在病例。某些病例可能是多能干细胞不能适当地发展成B细胞和T细胞所致。全身淋巴样组织几乎完全缺如，不能自己合成免疫球蛋白，细胞免疫功能几乎完全缺乏。</p>
                <br/>
            </div>
            <div class="col-md-5 library-right">
                <img src="images/policy-guide-1.jpg">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="functional-keys" id="back-library-3">
            <img src="images/back.png" alt="返回">
            <p class="text-back">返回PID图书馆</p>
        </div>
        <!--下面的内容会不受图片约束-->
        <div class="col-md-12 library-right">
            <h4>临床表现</h4>
            <p>
                患儿生后1～2个月内发病。对细菌、真菌、病毒和原虫感染均缺乏抵抗力，各种感染连续不断。患儿常发生皮肤、肺和胃肠道的感染，几乎所有患儿都有腹泻，大便培养见沙门杆菌属或致病性大肠埃希杆菌。持续性皮肤和黏膜念珠菌感染，甚至在应用广谱抗生素前即可发生。疣的发生率增高，可呈泛发性。患儿对致病力很弱的病毒也无抵抗力，疱疹、风疹或水痘病毒感染很严重，麻疹病程及皮疹持续时间较长。给某些患者接种牛痘或卡介苗，可能发生进行性牛痘疹或全身性结核疹。在病程中总有鼻窦和呼吸道感染，铜绿假单胞菌性肺脓肿、肺囊虫肺炎是常见的死亡原因。常伴患儿生长发育障碍。</p>
            <br/>
            <h4>检查</h4>
            <h5>1.免疫学检查</h5>
            <p>
                体内和体外测定B细胞和T细胞功能均明显抑制，一般淋巴细胞数量变化不大，在严重病例中淋巴细胞减少明显。出生6个月后血清免疫球蛋白常低于O.25g/L，外周血淋巴细胞数常低于1.5×10[9]/L，且无免疫功能。无γ-球蛋白血症较常见，但有些病例免疫球蛋白值可正常或增高。对抗原刺激的反应性很差，因此感染组织中所见到的炎症反应很轻。</p>
            <br/>　　
            <h5>2.产前检查</h5>
            <p>对曾有受累儿童出生的家族，通过以单克隆抗体进行胎儿血液荧光活化细胞分类，或在培养羊膜细胞中分析酶的水平可能实施本病的产前检测。</p><br/>　　
            <h5>3.携带者检测</h5>
            <p>患性联遗传型本病男孩的母亲可通过T细胞和B细胞中异常X染色体的选择性失活而检测到。</p><br/>　　
            <h5>4.组织病理检查</h5>
            <p>胸腺体积小，不足1.0g，由发育不良的上皮细胞和间质细胞构成的小叶组成，缺乏胸腺小体和淋巴细胞。外周淋巴组织生发中心和滤泡缺乏，常无浆细胞。</p><br/>
            <h4>治疗</h4>
            <h5>1.一般疗法</h5>　
            <p>（1）加强护理和营养 以提高患者的抵抗力和免疫力。</p>
            <p>（2）预防感染 应注意隔离，尽量减少与病原体的接触。对重症联合免疫缺陷病，必须将患儿长期置于无菌仓内护理，直至重建免疫功能。　　</p>
            <p>（3）避免接种疫苗 对疑似免疫缺陷的新生儿，应禁止接种牛痘、卡介苗等活疫苗，以免因接种牛痘而发生全身性牛痘疹，接种卡介苗引起全身性播散而致死。也应避免接种麻疹和脊髓灰质炎疫苗。</p><br/>
            <h5>2．干细胞移植</h5>
            <p>干细胞移植是唯一可以让重症联合免疫缺陷长期存活的办法，干细胞移植如果获得成功，将重组人体的造血系统，使得患者得以恢复健康。</p><br/>　　
            <h5>2.抗感染疗法</h5>
            <p>
                由于细胞免疫和体液免疫能力均低下，机体无法杀伤感染的病毒、细菌、真菌等病原体。因此，一旦发生感染，应选择广谱抗生素、有效的抗病毒制剂和抗真菌药物进行治疗。因抑菌性抗生素不能阻止病原菌的扩散，故还应使用杀菌性抗生素进行治疗。</p>
            <br/>　　
            <h5>3.免疫替补疗法　</h5>　
            <p>
                IVIG治疗宜早开始，以免发生感染所致不可逆性器质性损害。大剂量（400mg/kg，每3～4周1次）明显优于小剂量（200mg/kg，每3～4周1次）疗法;但用量应个体化，以血清IgG浓度上升到1000mg/dl为度。少数病例IVIG治疗效果很不理想，其原因可能是：治疗太晚、剂量不足、IVIG不能代替分泌型IgA和IVIG的抗体谱有限。各种支持疗法，包括营养、生活及卫生条件的改善，预防感染的发生，适当的体育锻炼，良好心理状态的维护，对各种并发症的预防和治疗等。</p>
            <br/>
        </div>
    </div>
</div>
<div class="library" id="library-4">
    <div class="container">
        <div class="library-main">
            <h3>CVID（普通多变型免疫缺陷）</h3>
            <div class="col-md-4 library-right">
                <img src="images/policy-guide-1.jpg">
            </div>
            <div class="col-md-8 library-left">
                <p>CVID（普通多变型免疫缺陷）</p>
                <p>（普通变异型免疫缺陷即普通常见变异型免疫缺陷病（CVID），是一种常见的低丙种球蛋白血症，曾被称为迟发性（或成人型）低丙种球蛋白血症。
                    为一组病因不同的，主要影响抗体合成的原发性免疫缺陷病。临床表现呈多样性，男女均可患病，发病年龄可在幼儿期，但更常发于学龄期，甚或成人期。</p><br/>
                <h4>病因</h4>
                <h5>1.分子遗传学机制</h5>
                <p>CVID有部分病例有家族史，特别是与选择性IgA缺陷患者发生于同一家庭。推测CVID和选择性IgA缺陷病是由于某个或某几个基因突变或缺失所致。</p><br/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="functional-keys" id="back-library-4">
            <img src="images/back.png" alt="返回">
            <p class="text-back">返回PID图书馆</p>
        </div>
        <!--下面的内容会不受图片约束-->
        <div class="col-md-12 library-right">
            <p>
                （1）第6对染色体主要组织相容性复合体（MHC）Ⅲ补体基因C4A基因缺乏，并常有特殊的人类白细胞抗原（HLA）或肿瘤坏死因子（TNF-α）基因多态性；MHCⅡ的DQ位点多态性与该病有关，可能是其候选基因组。</p>
            <p>（2）第9对染色体PAX5基因编码B细胞-特异性活化蛋白（BSAP），影响免疫球蛋白的类别转换；该基因失活可致小鼠免疫球蛋白缺陷，尚无资料表明也引起人类疾病。</p>
            <p>（3）第18对染色体第18对染色体缺失可发生CVID。</p>
            <h5>2.B细胞缺陷</h5>
            <p>多数患者外周血及淋巴组织中B淋巴细胞数量大致正常，但未成熟B淋巴细胞不能分化为产生Ig的浆细胞。少数患者外周血B细胞数量减少甚至难以测出。B细胞存在的内在缺陷使其完全不能分泌免疫球蛋白或仅能分泌IgM，
                不能向IgG转换。导致B细胞功能障碍的确切机制尚不清楚。</p><br/>
            <h5>3.T细胞缺陷</h5>
            <p>许多CVID的发病与T细胞功能缺陷密切相关，包括T细胞对B细胞的辅助不足或对B细胞的直接抑制。</p><br/>
            <h4>临床表现</h4>
            <h5>1.感染</h5>
            <p>常见反复细菌性感染，如急、慢性鼻窦炎、中耳炎、咽炎、气管炎和肺炎，可导致支气管扩张。病原菌为嗜血流感杆菌、链球菌、葡萄球菌、肺炎球菌等。其他病原体如支原体、念珠菌、卡氏肺囊虫、
                单纯疱疹和水痘-带状疱疹病毒也可感染CVID患者。
                少部分患者合并中枢神经系统感染，如慢性化脓性脑膜炎和病毒性脑炎等。感染常呈慢性发病，病程持续日久，可造成病变组织的器质性损害。部分病例可形成非干酪性肉芽肿，受累部位为肺、肝、脾和皮肤。</p>
            <br/>
            <h5>2.消化道症状</h5>
            <p>
                包括慢性吸收不良综合征、脂肪泻、叶酸和维生素B12缺乏、乳糖不耐受症、双糖酶缺乏症、蛋白质丢失性肠病等。肠梨形鞭毛虫感染是引起肠道症状的一个重要病因。结节性淋巴组织增生见于部分病例，内镜检查发现小肠固有层多发性淋巴滤泡和生发中心，
                消化道造影显示肠黏膜粗糙，凹凸不平或息肉样影像。肠黏膜活检显示黏膜固有层浆细胞明显减少，甚至缺如。</p><br/>
            <h5>3.少数患者可出现淋巴结和脾肿大</h5>
            <p>腹部肿大的淋巴结有时可被误诊为淋巴瘤。</p><br/>
            <h5>4.自身免疫性疾病和肿瘤</h5>
            <p>
                CVID易并发多种自身免疫性疾病如自身免疫性溶血性贫血、血小板减少性紫癜、系统性红斑狼疮、皮肌炎等。并发恶性肿瘤的几率也较高，发生率为8.5%～10%。包括白血病、淋巴网状组织肿瘤、胃癌和结肠癌等。</p>
            <br/>
            <h4>检查</h4>
            <h5>1.免疫球蛋白和抗体反应</h5>
            <p>血清免疫球蛋白含量普遍降低。绝大多数CVID患者血清IgG含量不超过300mg/dl，个别病例可达到500mg/dl，血清IgM和IgA水平也甚低。对各种抗原刺激缺乏免疫应答，血清同族血凝素效价低下。
                噬菌体Φx174抗体反应显示可产生少量中和抗体，抗体类别仅限于IgM，很少向IgG转换。</p><br/>
            <h5>2.B细胞计数</h5>
            <p>多数CVID患者外周血B细胞数大致正常，少数病例B细胞减少。B细胞表面标记正常。外周血B细胞呈未成熟状态。</p><br/>
            <h5>3.T细胞计数和功能</h5>
            <p>
                外周血T细胞数大致正常，1/3的病例T细胞亚群出现异常，表现为CD8T细胞升高，CD4/CD8T细胞比值下降（低于1.0），这些病例多伴有脾、淋巴结肿大和支气管扩张症。外周血T细胞经丝裂原（PHA）诱导的增殖反应和分化功能均低下，产生细胞因子的能力不足。</p>
            <br/>
            <h5>4.辅助检查</h5>
            <p>根据病情选择辅助检查。胸片可见肺部感染炎症影，反复感染者可见支气管扩张；B超可见肿大的淋巴结和脾肿大等；内镜检查发现小肠固有层多发性淋巴滤泡和生发中心；消化道造影显示肠黏膜粗糙，凹凸不平或息肉样影像。</p>
            <br/>
            <h4>鉴别诊断</h4>
            <p>应排除其他原发性免疫缺陷病，如X-连锁无丙种球蛋白血症（XLA）、高IgM综合征，重症联合免疫缺陷（SCID）以及伴有低免疫球蛋白血症的继发性或获得性免疫缺陷病（SID）。
                婴幼儿发病者不易与XLA鉴别，CVID血清总Ig一般不低于300mg/dl，外周血B细胞计数接近正常，临床症状也较XLA轻。有时难以与淋巴瘤相鉴别。</p><br/>
            <h4>并发症</h4>
            <p>
                反复发生细菌性感染，如反复肺炎可导致支气管扩张。合并中枢神经系统感染，可形成非干酪性肉芽肿。可至慢性吸收不良综合征，易并发多种自身免疫性疾病，溶血性贫血、血小板减少性紫癜、恶性贫血、中性粒细胞减少症、类风湿性关节炎、
                系统性红斑狼疮、皮肌炎、硬皮病、慢性活动性肝炎、多发性神经根炎、克罗恩病和非特异性慢性溃疡性结肠炎等。可并发恶性肿瘤包括白血病、淋巴网状组织肿瘤、胃癌和结肠癌等。</p><br/>
            <h4>治疗</h4>
            <p>
                1.CVID的治疗与XLA基本相似，静脉免疫球蛋白（IVID）的标准剂量为每月400mg/kg。皮下注射人血丙种球蛋白可用于对IVID有不良反应者，其价格也比IVID便宜。经IVID治疗后仍发生呼吸道和胃肠道感染，可用IgG和IgA滴鼻或口服。</p>
            <p>2.胸腺肽注射或胸腺移植（用于T细胞缺陷为主者）。</p>
            <p>3.适当的抗微生物制剂治疗和预防感染甚为重要，使用抗菌药物时，应每2周更换1次，以防耐药性的产生。贾第鞭毛虫感染者，使用甲硝唑治疗可收到良好效果。</p>
            <h4>预后</h4>
            <p>CVID的预后较XLA为好。虽有存活到70岁者，但除非早期接受全面合理的治疗，大多数患者的预后不良。严重细菌性或病毒性感染、自身免疫性疾病和肿瘤性疾病是导致死亡的原因。</p>
        </div>
    </div>
</div>
<div class="library" id="library-5">
    <div class="container">
        <div class="library-main">
            <h3>APDS（磷脂酰肌醇3－激酶δ综合征）</h3>
            <div class="col-md-8 library-left">
                <p>磷脂酰肌醇-3激酶（PI3K）δ综合征（activated phosphoinositide 3-kinase
                    syndrome，APDS）表现为衰老T细胞积聚、淋巴结肿大、免疫缺陷与自身免疫。反复呼吸道感染及肺部感染慢性化后导致支气管扩张；持续的疱疹病毒科病毒如EB病毒、
                    巨细胞病毒等感染；全身淋巴增生表现，如非肿瘤性淋巴结肿大、肝脾肿大和结节性黏膜淋巴样增生；约40%的病例伴有自身免疫性疾病；长期存活病例淋巴瘤（尤其是B细胞淋巴瘤）的发生率明显增高并成为主要死因。国内确诊病例最大宗报道为12例。
                    编码p110δ分子的PIK3CD GOF突变是APDS的主要病因， 被称为APDS1。迄今共发现4种导致APDS1的PIK3CD
                    GOF热点突变：E1021K、N334K、E525K和C416R，其中E1021K最为常见，占所有病例数的一半以上。APDS活化也可由编码磷脂酰肌醇3激酶
                    分子p85α亚基PIK3R1基因杂合剪接位点突变所致（APDS2），这一突变导致p85α对p110δ的抑制作用被解除，因而p110δ功能增强。</p>
            </div>
            <div class="col-md-4 library-right">
                <img src="images/policy-guide-1.jpg">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="functional-keys" id="back-library-5">
            <img src="images/back.png" alt="返回">
            <p class="text-back">返回PID图书馆</p>
        </div>
        <!--下面的内容会不受图片约束-->
        <div class="col-md-12 library-right">
            <p>免疫学异常包括不同程度的淋巴细胞减少症，尤其是初始T细胞计数减少，但衰老T细胞数量增多（CD3+CD8+CD57+），效应记忆CD8
                T细胞增多。此外，T细胞活化诱导的细胞死亡增加。外周血中转化B细胞增多，已完成免疫球蛋白类别转换的记忆性B细胞减少；
                多数患者血清IgM水平增高，IgG和IgA多缺乏，抗体应答受损。</p>

            <p>
                p110δ为AKT-mTOR通路中重要的激酶分子PI3K的裂解亚单位，上述突变导致p110δ对其下游分子AKT和S6的磷酸化能力增强，因而活化AKT-mTOR通路，导致细胞增殖、分化、凋亡等行为异常。已有研究表明，p110δ
                GOF突变并不影响T细胞受体（TCR）介导的钙内流和NFκB活性，
                提示靶向mTOR信号仅可控制p110δ GOF突变导致的内源性细胞活化。由于mTOR在次通路中的重要作用，国内外已有采用雷帕霉素进行靶向治疗的报道，雷帕霉素在体外可基本消除p110δ
                GOF突变对S6过度磷酸化的影响，患者接受治疗后临床表现部分改善，主要是淋巴增生缓解，
                肿大的脾脏明显缩小。但是，仅有半数病例对雷帕霉素治疗有效，其余病例收效甚微。更为精准的p110δ选择性小分子抑制剂——Leniolisib/CDZ173，在体外可显著抑制T细胞AKT和S6磷酸化，因而可能较雷帕霉素具有优势。已使用Leniolisib/CDZ173治疗6例患者显示，
                治疗后淋巴结肿大明显减小，衰老CD4和CD8
                T细胞减少，过渡细胞减少，而原来明显降低的初始B细胞则可达正常水平。该药对AKT和S6的磷酸化抑制呈剂量依赖性。目前该药已进入更大样本量的Ⅱ期临床试验，有可能取得更为充分的精准医疗数据，
                从而替代目前临床针对APDS的不太成熟的造血干细胞移植治疗。</p>
        </div>
    </div>
</div>
<div class="library" id="library-6">
    <div class="container">
        <div class="library-main">
            <h3>补体缺陷</h3>
            <div class="col-md-4 library-right">
                <img src="images/policy-guide-1.jpg">
            </div>
            <div class="col-md-8 library-left">
                <p>补体在炎症及免疫反应中起着重要作用，常见的补体缺陷有①C3缺乏或C3抑制物缺乏，后者使C3过度消耗同样使血清中C3水平下降，导致反复细菌感染。②C1抑制物缺陷，
                    C1抑制物是血清中的一种糖蛋白，除对Cis有抑制作用外，尚可抑制纤溶酶原、激肽等炎症介质的激活，因此C1抑制物的缺陷，可导致血管通透性增加、组织水肿，即所谓的遗传性血管水肿。 </p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="functional-keys" id="back-library-6">
            <img src="images/back.png" alt="返回">
            <p class="text-back">返回PID图书馆</p>
        </div>
    </div>
</div>

<!--library end here-->
<!--footer strat here-->
<div class="footer" id="footer">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-4 footer-top">
                <h3>关于我们 </h3>
                <p>正式成立于2017年2月8日，组织致力于宣传原发性免疫缺陷病，让社会对原发性免疫缺陷有更广泛的认知，减少基层医院的误诊漏诊，让更多患儿及时确诊，为更多患儿争取社会福利。组织今后将加强与医疗机构的联系，争取更好地为患者提供服务。</p><br>
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
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
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
