<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>


<title></title>
</head>
<body>

	<div class="container-fluid" style="margin: 30px">
		<div class="row">

<button type="button" class="btn btn-warning" style="float: right;">
							<li role="presentation" class="active">
								<a href="${pageContext.request.contextPath }/ll/exitLogin">退出</a>
								

							</li>
						</button>

			<h1>Hello, world!</h1>
<p class="text-center">


			<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a href="${request.contextPath }/booktest/book/findAllBooks">书籍管理</a></li>
				<li role="presentation" class="active"><a href="${request.contextPath }/booktest/notice/findAllNotice">公告处理</a></li>
				<li role="presentation" class="active"><a href="${request.contextPath }/booktest/reader/findReader">借阅者管理</a></li>


			</ul>
</p>
		</div>
	</div>
</body>
</html>
