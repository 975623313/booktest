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
	function deleteReader(readerId) {
		var flag = confirm("你确定要删除吗？");
		if (flag) {
			$
					.ajax({
						url : "${pageContext.request.contextPath }/reader/deleteReader",
						//在没有返回值之前，锁定服务器如果是true会开启同步，执行两个线程
						async : false,
						type : "POST",
						data : {
							readerId : readerId
						},
						success : function(data) {
							if ("success" == data) {
								alert("删除成功");
								location.reload();
							} else {
								alert("没有该用户")
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

			<h1>Hello, ${readers.readerName}</h1>

			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a href="${request.contextPath }/booktest/book/findAllBooks">书籍管理</a></li>
				<li role="presentation" class="active"><a href="${request.contextPath }/booktest/notice/findAllNotice">公告处理</a></li>
				<li role="presentation" class="active"><a href="${request.contextPath }/booktest/reader/findReader">借阅者管理</a></li>


			</ul>
		</div>
		<table class="table table-hover">
			<!-- On rows -->
			<tr class="tasks-bar">
				<td class="active">借阅者姓名</td>
				<td class="success">借阅者住址</td>
				<td class="success">借阅者联系方式</td>
				<td class="success">读者ID</td>
				<td class="danger">借书ID</td>
				<td class="warning">查看借阅者未还的书籍</td>
				<td class="danger">操作</td>


			</tr>


			<c:forEach items="${list}" var="list" >

				<tr>
					<td>${list.readerName}</td>
					<td>${list.readerAddress}</td>
					<td>${list.readerContact}</td>
					<td>${list.readerId}</td>
					<td>${list.borrowId}</td>
					<td><button type="button" class="btn btn-warning">
							<a
								href="${pageContext.request.contextPath }/reader/findBorrowBook/${list.readerId}">查看借阅者未还的书籍</a>
						</button></td>
					<td>
						<button type="button" class="btn btn-warning">
							<li role="presentation" class="active"><a href="#"
								onclick="deleteReader('${list.readerId}')">拉黑该用户</a></li>
						</button>
						<button type="button" class="btn btn-info">管理处罚该用户</button>

						<button type="button" class="btn btn-success">
						<a id="alink" href="${pageContext.request.contextPath }/borrow/showBorrow/${list.readerId}">借阅者借书</a> 

						</button>
						
						<!-- <li role="presentation" class="active"><a href="#" onclick="IsshowBorrow('${list.readerId}')">借阅者借书${list.readerId}</a></li> -->
						


					</td>


				</tr>

			</c:forEach>

		</table>
		<div class="row">
			<br /> <br /> <br /> <br />

			<div class="col-md-6 col-md-offset-3">
				<p class="text-center">
					<button type="button" class="btn btn-success">
						<li role="presentation" class="active"><a
							href="${pageContext.request.contextPath }/addReader">添加借阅者</a></li>
					</button>
				</p>
			</div>
		</div>
	</div>
</body>
</html>
