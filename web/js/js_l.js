// JavaScript Document
"use strict";
/*导航栏透明化*/
//$(window).scroll(function() {
//	if($(".navbar").offset().top > 50) {
//		$(".navbar-fixed-top").addClass("top-nav");
//	} else {
//		$(".navbar-fixed-top").removeClass("top-nav");
//	}
//});
/*回到顶部*/
$(document).ready(function() {
	$().UItoTop({
		easingType: 'easeOutQuart'
	});
});
/*登陆*/
var index1;
var username;
var password;
var repassword;
var validation;
var valianswer;
var name;
$("#RePassword").blur(function () {
    if ($("#Password").val()!=$("#RePassword").val())
    {
        $("#repassword-p").html("&emsp;&nbsp;&nbsp;两次密码不一致");
    }
    else
    {
        $("#repassword-p").html("&nbsp;");
    }
    if ($("#RePassword").val().length == 0)
    {
        $("#repassword-p").html("&emsp;&nbsp;&nbsp;确认密码不能为空");
    }
})
$("#Password").blur(function () {
    if ($("#Password").val().length == 0)
    {
        $("#password-p").html("&emsp;&nbsp;&nbsp;密码不能为空");
    }
    else
    {
        $("#password-p").html("&nbsp;");
    }
})
$("#Username").blur(function () {
    if ($("#Username").val().length == 0)
    {
        $("#username-p").html("&emsp;&nbsp;&nbsp;用户名不能为空");
    }
    else
    {
        $("#username-p").html("&nbsp;");
    }
})
$("#Name").blur(function () {
    if ($("#Name").val().length == 0)
    {
        $("#name-p").html("&emsp;&nbsp;&nbsp;昵称不能为空");
    }
    else
    {
        $("#name-p").html("&nbsp;");
    }
})
$("#validation").blur(function () {
    if ($("#validation").val().length == 0)
    {
        $("#validation-p").html("&emsp;&nbsp;&nbsp;密保问题不能为空");
    }
    else
    {
        $("#validation-p").html("&nbsp;");
    }
})
$("#valianswer").blur(function () {
    if ($("#valianswer").val().length == 0)
    {
        $("#valianswer-p").html("&emsp;&nbsp;&nbsp;密保问题答案不能为空");
    }
    else
    {
        $("#valianswer-p").html("&nbsp;");
    }
})
function showregister(){
    layer.close(index1);
    layer.open({
        type:1,
        title:["注册","font-size:18px;color:#ec4700;weight:200;"],
        area:["320px","480px"],
        content:$("#registerBox"),
    })
}
function register() {
    username = $.trim($("#Username").val());
    password = $.trim($("#Password").val());
    repassword = $.trim($("#RePassword").val());
    validation = $.trim($("#validation").val());
    valianswer = $.trim($("#valianswer").val());
    name = $.trim($("#Name").val());
    if (username!=""&&password!=""&&valianswer!=""&&validation!=""&&repassword!="")
    {
        location.href = "Servletregister?username="+username+"&password="+password+"&validation="+validation+"&valianswer="+valianswer+"&name="+name;
    }
    else
    {
        layer.alert("仍有信息未填!",{
            title:"提示",
            icon:5,
        });
    }
}
function ShowLoginText(){
    index1 = layer.open({
        type:1,
        title:["登陆","font-size:18px;color:#ec4700;weight:200;"],
        area:["320px","310px"],
        content:$("#loginBox"),
    });
}
function ShowBackstageLoginText(){
    index1 = layer.open({
        type:1,
        title:["登陆","font-size:18px;color:#ec4700;weight:200;"],
        area:["320px","310px"],
        content:$("#backstageloginBox"),
    });
}
function Login(){
    var username=$.trim($("#InputUsername").val());//获取用户名trim是去掉空格
    var password=$.trim($("#InputUserPwd").val());//获取密码
    if(username==""||password==""){
        layer.alert("用户名或者密码不能为空!",{
            title:"提示",
            icon:5,
        });
    }
    if (username!=""&&password!=""){
        location.href = "Servletlogin?username="+username+"&password="+password+"&flag=0";
    }
}
function BackstageLogin(){
    var username=$.trim($("#InputUsername_b").val());//获取用户名trim是去掉空格
    var password=$.trim($("#InputUserPwd_b").val());//获取密码
    if(username==""||password==""){
        layer.alert("用户名或者密码不能为空!",{
            title:"提示",
            icon:5,
        });
    }
    if (username!=""&&password!=""){
        location.href = "Servletlogin?username="+username+"&password="+password+"&flag=1";
    }
}
function LoginInbof(){
    var username=$.trim($("#InputUsername").val());//获取用户名trim是去掉空格
    var password=$.trim($("#InputUserPwd").val());//获取密码
    var title = $("#title").val();
    if(username==""||password==""){
        layer.alert("用户名或者密码不能为空!",{
            title:"提示",
            icon:5,
        });
    }
    if (username!=""&&password!=""){
        location.href = "Servletlogin?username="+username+"&password="+password+"&url=branch_of_story.jsp"+"&title="+title;
    }
}

/*图书馆togglt效果*/
$(document).ready(function(){
	$("#pid-1").click(function(){
		$(".grid").slideToggle();
		$("#library-1").slideToggle();
	});
	$("#back-library-1").click(function(){
		$("#library-1").slideToggle();
		$(".grid").slideToggle();
	})
	$("#pid-2").click(function(){
		$(".grid").slideToggle();
		$("#library-2").slideToggle();
	});
	$("#back-library-2").click(function(){
		$("#library-2").slideToggle();
		$(".grid").slideToggle();
	})
	$("#pid-3").click(function(){
		$(".grid").slideToggle();
		$("#library-3").slideToggle();
	});
	$("#back-library-3").click(function(){
		$("#library-3").slideToggle();
		$(".grid").slideToggle();
	})
	$("#pid-4").click(function(){
		$(".grid").slideToggle();
		$("#library-4").slideToggle();
	});
	$("#back-library-4").click(function(){
		$("#library-4").slideToggle();
		$(".grid").slideToggle();
	})
	$("#pid-5").click(function(){
		$(".grid").slideToggle();
		$("#library-5").slideToggle();
	});
	$("#back-library-5").click(function(){
		$("#library-5").slideToggle();
		$(".grid").slideToggle();
	})
	$("#pid-6").click(function(){
		$(".grid").slideToggle();
		$("#library-6").slideToggle();
	});
	$("#back-library-6").click(function(){
		$("#library-6").slideToggle();
		$(".grid").slideToggle();
	})
})
/*导航栏自适应*/
$(function(){
	var _flag = 1;
	var _flag_footer = 1;
	if($(window).width()<997){
		$("#nav1").toggle();
		$("#nav2").toggle();
		$("#nav3").toggle();
		$("#nav4").toggle();
		$("#nav5").toggle();
		$("#dropdown").toggle();
		_flag = 0;
		}
		if ($(window).width()<480){
        $("#footer-nav").toggle();
        _flag_footer = 0;
        }
	$(window).resize(function(){
		if($(window).width()<997 && _flag == 1){
		$("#nav1").toggle();
		$("#nav2").toggle();
		$("#nav3").toggle();
		$("#nav4").toggle();
		$("#nav5").toggle();
		$("#dropdown").toggle();
		_flag = 0;
		}
		if($(window).width()<480 && _flag_footer == 1)
        {
            $("#footer-nav").toggle();
            _flag_footer = 0;
        }
		if($(window).width()>=997 && _flag == 0){
		$("#nav1").toggle();
		$("#nav2").toggle();
		$("#nav3").toggle();
		$("#nav4").toggle();
		$("#nav5").toggle();
		$("#dropdown").toggle();
		_flag = 1;
		}
		if($(window).width()>=480 && _flag_footer == 0){
		    $("#footer-nav").toggle();
		    _flag_footer = 1;
        }
	})
})
/*导航栏高亮*/
$(function(){
	var urlstr = location.href;　　　　//获取浏览器的url
	var urlstatus=false;//标记
	//遍历导航div
	$(".my-navbar a").each(function () {
		//判断导航里面的rel和url地址是否相等
		if ((urlstr + '/').indexOf($(this).attr('href')) > -1&&$(this).attr('href')!='') {
			$(this).css('cssText','color:#ec4700!important'); urlstatus = true;
		}
		else {
			$(this).css('cssText','color:#666666');
		}
	});
//当前样式保持
	if (!urlstatus) {
		$(".my-navbar a").eq(0).css('cssText','color:#ec4700!important'); }
	});
/*病友故事会*/
$(function() {

				var ghostNode = $('#masonry_ghost').find('.thumbnail'),
					i, ghostIndexArray = [];
				var ghostCount = ghostNode.length;
				for(i = 0; i < ghostCount; i++) {
					ghostIndexArray[i] = i;
				}
				ghostIndexArray.sort(function(a, b) {
					if(Math.random() > 0.5) {
						return a - b;
					} else {
						return b - a;
					}
				});

				var currentIndex = 0;
				var masNode = $('#masonry');
				var imagesLoading = false;

				function getNewItems() {
					var newItemContainer = $('<div/>');
					for(var i = 0; i < 6; i++) {
						if(currentIndex < ghostCount) {
							newItemContainer.append(ghostNode.get(ghostIndexArray[currentIndex]));
							currentIndex++;
						}
					}
					return newItemContainer.find('.thumbnail');
				}

				function processNewItems(items) {
					items.each(function() {
						var $this = $(this);
						var imgsNode = $this.find('.imgs');
						var title = $this.find('.title').text();
						var author = $this.find('.author').text();
						title += '&nbsp;&nbsp;(' + author + ')';
						var lightboxName = 'lightbox_'; // + imgNames[0];

						var imgNames = imgsNode.find('input[type=hidden]').val().split(',');

					});
				}

				function initMasonry() {
					var items = getNewItems().css('opacity', 0);
					processNewItems(items);
					masNode.append(items);

					imagesLoading = true;
					items.imagesLoaded(function() {
						imagesLoading = false;
						items.css('opacity', 1);
						masNode.masonry({
							itemSelector: '.thumbnail',
							isFitWidth: true
						});
					});
				}

				function appendToMasonry() {
					var items = getNewItems().css('opacity', 0);
					processNewItems(items);
					masNode.append(items);

					imagesLoading = true;
					items.imagesLoaded(function() {
						imagesLoading = false;
						items.css('opacity', 1);
						masNode.masonry('appended', items);
					});
				}

				initMasonry();

				$(window).scroll(function() {

					if($(document).height() - $(window).height() - $(document).scrollTop() < 10) {

						if(!imagesLoading) {
							appendToMasonry();
						}

					}

				});

				function randomColor() {
					var rand = Math.floor(Math.random() * 0xFFFFFF).toString(16);
					for(; rand.length < 6;) {
						rand = '0' + rand;
					}
					return '#' + rand;
				}

			});
//	所有banner自适应


$(".button0").click(function () {
    $("#FirstCarousel").carousel(0);
});
$(".button1").click(function () {
    $("#FirstCarousel").carousel(1);
});
$(".button2").click(function () {
    $("#FirstCarousel").carousel(2);
});
$(".button3").click(function () {
    $("#FirstCarousel").carousel(3);
});

//		主页-自适应匹配不同的图片尺寸,以700px为临界值-郑健磊
$(function () {
    function ChangeImg() {
        $(function () {
            var winWidth = $(window).width();
            if (winWidth < 700) {
                $(".carousel-inner .item:eq(0) img[src='images/banner-4.1.jpg']").attr('src', 'images/banner-4.1.jpg');
                $(".carousel-inner .item:eq(1) img[src='images/banner-5.1.jpg']").attr('src', 'images/banner-5.1.jpg');
                $(".carousel-inner .item:eq(2) img[src='images/banner-6.1.jpg']").attr('src', 'images/banner-6.1.jpg');
                $(".carousel-inner .item:eq(3) img[src='images/banner-7.1.jpg']").attr('src', 'images/banner-7.1.jpg');
            } else {
                $(".carousel-inner .item:eq(0) img[src='images/banner-4.jpg']").attr('src', 'images/banner-4.jpg');
                $(".carousel-inner .item:eq(1) img[src='images/banner-5.jpg']").attr('src', 'images/banner-5.jpg');
                $(".carousel-inner .item:eq(2) img[src='images/banner-6.jpg']").attr('src', 'images/banner-6.jpg');
                $(".carousel-inner .item:eq(3) img[src='images/banner-7.jpg']").attr('src', 'images/banner-7.jpg');
            }
        });
    };
    ChangeImg();
    $(window).resize(function () {
        ChangeImg();
    });
});
