<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>


<title></title>
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

	<div class="container-fluid" style="margin: 30px">
		<div class="row">

<button type="button" class="btn btn-warning" style="float: right;">
							<li role="presentation" class="active">
								<a href="${pageContext.request.contextPath }/ll/exitLogin">退出</a>
								

							</li>
						</button>

			<h1>Hello, world!</h1>

			<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a href="${request.contextPath }/booktest/book/findAllBooks">书籍管理</a></li>
				<li role="presentation" class="active"><a href="${request.contextPath }/booktest/notice/findAllNotice">公告处理</a></li>
				<li role="presentation" class="active"><a href="${request.contextPath }/booktest/reader/findReader">借阅者管理</a></li>
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
					<td>
						<button type="button" class="btn btn-warning">
							<li role="presentation" class="active">
								<!--  <a href="${pageContext.request.contextPath }/book/deleteOneBook/${list.bookId}">减少一本</a>-->
								<a href="#" onclick="deleteOne('${list.bookId}')">删 除一本</a>

							</li>
						</button>

						<button type="button" class="btn btn-warning">
							<li role="presentation" class="active"><a href="#"
								onclick="addOne('${list.bookId}')">增加一本</a></li>
						</button>
					</td>
				</tr>
			</c:forEach>


		</table>
		<div class="row">
			<br /> <br /> <br /> <br />


	<!-- 添加书籍 -->

		<form action="${pageContext.request.contextPath }/book/searchBook"
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
		</form>




			<div class="col-md-6 col-md-offset-3">
				<p class="text-center">
					<button type="button" class="btn btn-success">
						<li role="presentation" class="active"><a href="${pageContext.request.contextPath }/addBook">添加新类型书籍</a></li>
					</button>

				</p>
			</div>
		</div>
	</div>
</body>
</html>
