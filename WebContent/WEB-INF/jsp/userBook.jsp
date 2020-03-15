<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>


<title>Vlava - One page responsive bootstrap site template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/rs-plugin/css/settings.css" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/isotope.css" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/flexslider.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/js/fancybox/jquery.fancybox.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
<!-- skin -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/skin/default.css">
<script type="text/javascript">
	function deleteOne(bookId) {
		var flag = confirm("你确定要删除吗？");
		if (flag) {
			$.ajax({
				url : "${pageContext.request.contextPath }/book/deleteOneBook",
				//在没有返回值之前，锁定服务器如果是true会开启同步，执行两个线程
				async : false,
				type : "POST",
				data : {
					bookId : bookId
				},
				success : function(data) {
					if ("success" == data) {
						alert("删除成功");
						location.reload();
					} else {
						alert("已经没有了")
					}
				}
			});
		}
	}

	function addOne(bookId) {
		var flag = confirm("你确定要增加吗？");
		if (flag) {
			$.ajax({
				url : "${pageContext.request.contextPath }/book/addOneBook",
				//在没有返回值之前，锁定服务器如果是true会开启同步，执行两个线程
				async : false,
				type : "POST",
				data : {
					bookId : bookId
				},
				success : function(data) {
					if ("success" == data) {
						alert("增加成功");
						location.reload();
					} else {
						alert("！！！！！！！！！！！！！！！！圖書館放不下了！")
					}
				}
			});
		}
	}
</script>
</head>
<body>



<section id="intro">

	<div class="intro-content" >
		<h2>欢迎来到图书馆系统！</h2>
		<h3>书中自有黄金屋 书中自有颜如玉</h3>
		<div class="navbar-header">
				
				
			</div>
	</div>
	</section>


	<section id="testimonials" class="section"
		data-stellar-background-ratio="0.5">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="align-center">
					<div class="flexslider testimonials-slider">
						<ul class="slides">
							<li>
								<div class="testimonial clearfix">

									<i class="fa fa-quote-left fa-5x"></i>
									<h5>生活总是让我们遍体鳞伤，但到后来，那些受伤的地方一定会变成我们最强壮的地方。</h5>
									<br /> <span class="author">&mdash; 海明威《老人与海》</span>
								</div>
							</li>

							<li>
								<div class="testimonial clearfix">

									<i class="fa fa-quote-left fa-5x"></i>
									<h5>
										像那伊卡瑞俄斯海里的水,忽然受到一片阴云底下的一阵东南风,激荡得巨浪轩然而起,又像一片稠密的麦田刮来的一阵狂暴的西风,翻腾得那些麦子都垂头倒穗。
									</h5>
									<br /> <span class="author">&mdash; 《伊索寓言》</span>
								</div>
							</li>
							<li>
								<div class="testimonial-clearfix">

									<i class="fa fa-quote-left fa-5x"></i>
									<h5>“有一天，我看了四十四次日落！” 过了一会儿，你又说： “你知道，悲伤的人会爱上日落的。”
										“那么你是很悲伤了？”我问，“看了四十四次日落的那天？” 小王子没有回答我。</h5>
									<br /> <span class="author">&mdash; 安东尼·德·圣-埃克苏佩里《小王子》</span>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</div>
	</section>
	
		
	
	<div class="container-fluid" style="margin: 30px">
	<div class="row">

<button type="button" class="btn btn-warning" style="float: right;">
							<li role="presentation" class="active">
								<a href="${pageContext.request.contextPath }/ll/exitLogin">退出</a>
								

							</li>
						</button>

			<h1>Hello, ${readers.readerName}</h1>
			<br><br>
				<form action="${pageContext.request.contextPath }/book/searchUserBook"
			method="post" class="definewidth m10">
			<table >
				<tr>
					
					<td><input type="text" name="key" /></td>
					
					<td ><input type="submit"  value="搜索" >

					</td>
				</tr>
		
				
				
					
				
			</table>
		</form>

	<br><br><br>

			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a
					href="${request.contextPath }/booktest/user/findUserBooks">书籍搜索</a></li>
				<li role="presentation" class="active"><a
					href="${request.contextPath }/booktest/user/findUserNotice">用户公告查看</a></li>
				<li role="presentation" class="active"><a
					href="${request.contextPath }/booktest/user/findUserBorrow/${readers.readerId}">用户自己借书管理</a></li>


			</ul>
		</div>


		<!-- 书籍的操作 -->
		<table class="table table-hover">
			<!-- On rows -->
			<tr class="tasks-bar">
				<td class="active">书籍编号</td>
				<td class="success">书籍名称</td>
				<td class="warning">作者</td>
				<td class="danger">类型</td>
				<td class="active">日期</td>
				<td class="success">出版社</td>
				<td class="warning">主题</td>
				<td class="danger">数量</td>

				<td class="info">操作</td>
			</tr>
			<c:forEach items="${list}" var="list" varStatus="id">
				<tr>
					<td>${list.bookISBN}</td>
					<td>${list.bookName}</td>
					<td>${list.bookWriter}</td>
					<td>${list.bookClass}</td>
					<td>${list.bookDate}</td>
					<td>${list.bookPublic}</td>
					<td>${list.bookTopic}</td>
					<td>${list.bookNumber}</td>
					<!-- 
					<td>
						<button type="button" class="btn btn-warning">
							<li role="presentation" class="active">
								  <a href="${pageContext.request.contextPath }/book/deleteOneBook/${list.bookId}">减少一本</a>
								  <a href="#" onclick="deleteOne('${list.bookId}')">删 除一本</a>
								  	</li>
						</button>

						<button type="button" class="btn btn-warning">
							<li role="presentation" class="active"><a href="#"
								onclick="addOne('${list.bookId}')">增加一本</a></li>
						</button>
					</td>
								  
								  
								  -->

				
				</tr>
			</c:forEach>


		</table>
		<div class="row">
			<br /> <br /> <br /> <br />


	<!-- 添加书籍 -->

		<!-- <form action="${pageContext.request.contextPath }/book/searchBook"
			method="post" class="definewidth m20">
			<table class="table table-bordered table-hover definewidth m10">
				<tr>
					<td width="10%" class="tableleft">请输入搜索关键字</td>
					<td><input type="text" name="key" /></td>
				</tr>
		
				
				<tr>
					<td class="tableleft"></td>
					<td><input type="submit" class="btn btn-primary" value="搜索">

					</td>
				</tr>
			</table>
		</form> -->

<!-- 

			<div class="col-md-6 col-md-offset-3">
				<p class="text-center">
					<button type="button" class="btn btn-success">
						<li role="presentation" class="active"><a href="${pageContext.request.contextPath }/addBook">添加新类型书籍</a></li>
					</button>

				</p>
			</div>

 -->


		</div>
	
	</div>
	
	
	
	

	<section id="footer" class="section footer">
	<div class="container">

		<div class="row align-center copyright">
			<div class="col-sm-12">
				<p>
					广东海洋大学寸金学院计算机科学与技术6班：<a rel="nofollow" href="#" target="_parent">图书系统</a>
				</p>
			</div>
		</div>

	</div>

	</section>
	<a href="#header" class="scrollup"><i class="fa fa-chevron-up"></i></a>

	<!-- Javascript Library Files -->
	<script src="${pageContext.request.contextPath }/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.isotope.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.nicescroll.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/fancybox/jquery.fancybox.pack.js"></script>
	<script src="${pageContext.request.contextPath }/js/skrollr.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.scrollTo.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.localScroll.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/stellar.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.appear.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.flexslider-min.js"></script>

	<!-- Contact Form JavaScript File -->
	<script src="${pageContext.request.contextPath }/contactform/contactform.js"></script>

	<!-- Template Main Javascript File -->
	<script src="${pageContext.request.contextPath }/js/main.js"></script>



	
</body>
</html>
