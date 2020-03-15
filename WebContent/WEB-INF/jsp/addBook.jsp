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
				<li role="presentation" class="active"><a
					href="${request.contextPath }/booktest/book/findAllBooks">书籍管理</a></li>
				<li role="presentation" class="active"><a
					href="${request.contextPath }/booktest/notice/findAllNotice">公告处理</a></li>
				<li role="presentation" class="active"><a
					href="${request.contextPath }/booktest/reader/findReader">借阅者管理</a></li>
			</ul>
		</div>



		<!-- 添加书籍 -->

		<form action="${pageContext.request.contextPath }/book/addBook"
			method="post" class="definewidth m20">
			<table class="table table-bordered table-hover definewidth m10">
				<tr>
					<td width="10%" class="tableleft">书籍编号（ISBN）</td>
					<td><input type="text" name="bookISBN" /></td>
				</tr>
				<tr>
					<td width="10%" class="tableleft">书籍名称</td>
					<td><input type="text" name="bookName" /></td>
				</tr>

				<tr>
					<td class="tableleft">作者</td>
					<td><input type="text" name="bookWriter" /></td>
				</tr>

				<tr>
					<td class="tableleft">书籍类别</td>
					<td><input type="text" name="bookClass" /></td>
				</tr>

				<tr>
					<td class="tableleft">出版日期（yyyy-mm-dd）</td>
					<td><input type="text" name="bookDate" /></td>
				</tr>


				<tr>
					<td class="tableleft">出版社</td>
					<td><input type="text" name="bookPublic" /></td>
				</tr>
				<tr>
					<td class="tableleft">主题</td>
					<td><input type="text" name="bookTopic" /></td>
				</tr>
				<tr>
					<td class="tableleft">书籍數量</td>
					<td><input type="text" name="bookNumber" /></td>
				</tr>
				<tr>
					<td class="tableleft"></td>
					<td><input type="submit" class="btn btn-primary" value="添加">

					</td>
				</tr>
			</table>
		</form>
	</div>





	</div>









</body>
</html>

