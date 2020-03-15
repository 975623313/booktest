<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>Flight - Travel and Tour</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/fontAwesome.css">
<link rel="stylesheet" href="css/hero-slider.css">
<link rel="stylesheet" href="css/owl-carousel.css">
<link rel="stylesheet" href="css/datepicker.css">
<link rel="stylesheet" href="css/tooplate-style.css">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">

<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body>


	<section class="banner" id="top">
		<div class="container">
			<div class="row">
				<div class="col-md-5"></div>
				<div class="col-md-5 col-md-offset-1">
					<section id="first-tab-group" class="tabgroup">
						<div id="tab1">
							<div class="submit-form">
								<h4>
									图书馆<em>系统登录</em>:
								</h4>



								<form id="form-submit" action="${pageContext.request.contextPath }/ll/toLogin" method="post">
									<div class="row">
										<div class="col-md-12">
											<fieldset>
												<label for="from">账号</label> <input name="account"
													type="text" class="form-control text" id="deparure"
													placeholder="请输入账号">
											</fieldset>

											<fieldset>
												<label for="departure">密码</label> <input name="password"
													type="password" class="form-control text" id="deparure"
													placeholder="请输入密码"> <label class="checkbox"><input
													type="checkbox" value="remember-me"> 记住密码 </label>
											</fieldset>


										<!-- 	<div class="radio-select">
												<div class="row">
													<div class="col-md-6 col-sm-6 col-xs-6">
														<label for="round">管理者</label> <input type="radio"
															name="statusCode" id="round" value="200" required="required"
															onchange='this.form.()'>
													</div>
													<div class="col-md-6 col-sm-6 col-xs-6">
														<label for="oneway">用户</label> <input type="radio"
															name="statusCode" id="oneway" value="100"
															required="required" onchange='this.form.()'>
													</div>

												</div>
											</div> -->

											<fieldset>
												<button type="submit" id="form-submit" class="btn">登录</button>
											</fieldset>
											<div class="registration">
												没有账户?<br /> <a class="" href="${pageContext.request.contextPath }/reg">注册一个新账户</a>
											</div>
										</div>
									</div>
								</form>











							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</section>







	<footer>
		<div class="container">
			<div class="row">


				<div class="col-md-22">
					<p>
						广东海洋大学寸金学院计算机科学与技术6班：<a rel="nofollow" href="#" target="_parent">图书系统</a>
					</p>
				</div>
			</div>
		</div>
	</footer>





	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

	<script src="js/vendor/bootstrap.min.js"></script>

	<script src="js/datepicker.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

	<script
		src="http:http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
    $(document).ready(function() {

        

        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 0;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
</body>
</html>