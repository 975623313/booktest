<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
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

			<h1>Hello, world!      ${reader.getReaderName()}</h1>
<p class="text-center">


			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a
					href="${request.contextPath }/booktest/user/findUserBooks">书籍搜索</a></li>
				<li role="presentation" class="active"><a
					href="${request.contextPath }/booktest/user/findUserNotice">用户公告查看</a></li>
				<li role="presentation" class="active"><a
					href="${request.contextPath }/booktest/user/findUserBorrow/${readers.readerId}">用户自己借书管理</a></li>


			</ul>
</p>


			<!-- 书籍的操作 -->
			<table class="table table-hover">
				<!-- On rows -->
				<tr class="tasks-bar">

					<td class="success">书籍名称</td>
					<td class="warning">借阅者名称</td>
					<td class="danger">借书日期</td>
					<td class="success">还书日期</td>
					<td class="warning">已经借书天数</td>
			
					<td class="success">操作</td>

				</tr>
				<c:forEach items="${list}" var="list" varStatus="id">
					<tr>
						<td>${list.bookName}</td>
						<td>${list.readerName}</td>
						<!-- <td>${list.borrowDate}</td> -->
						<td><fmt:formatDate value="${list.borrowDate}" /></td>
						<td><fmt:formatDate value="${list.returnDate}" /></td>
						
						<td>${list.expireDate}</td>
						
						<td><button type="button" class="btn btn-warning">

								<li role="presentation" class="active"><a href="#"
									onclick="returnBooks('${list.bookName}')">还书</a></li>
							</button></td>
					</tr>
				</c:forEach>


			</table>

		</div>
	</div>
</body>
</html>
