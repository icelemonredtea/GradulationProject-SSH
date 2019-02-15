<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 引入css -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- 引入jQuery -->
<script src="bootstrap/js/jquery.js"></script>
<!-- 引入js ,必选在此前引入jquery-->
<script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12">
			<h1 class="text-center" style="color: red;">
				 数据库中存储信息
			</h1>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12">
			<table class="table table-striped table-hover">
				<thead>
					<tr class="danger">
						<th>
							编号
						</th>
						<th>
							日期
						</th>
						<th>
							方法
						</th>
						<th>
							储存路径
						</th>
						<th>
							名字
						</th>
						<th>
							格式
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${pictures}">
						<tr>
							<td>
								${list.id}
							</td>
							<td>
								${list.date}
							</td>
							<td>
								${list.method}
							</td>
							<td>
								${list.content}
							</td>
							<th>
								${list.uploadpictureFileName}
							</th>
							<th>
								${list.uploadpictureContentType}
							</th>
							<th>
							<%-- 	<a href="${pageContext.request.contextPath}/deletePicture.action?id=${list.id}"> --%>
									<button type="button" class="btn  btn-danger">删除</button>
							<!-- 	</a> -->
							</th>
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-8 ">
		<a href="${pageContext.request.contextPath}/pictureSelect.action">
				<button type="button" class="btn btn-default btn-primary">返回主页</button>
		</a>
		</div>
		<div class="col-md-4 ">
			<ul class="pagination">
				<li>
					 <a href="#">Prev</a>
				</li>
				<li>
					 <a href="#">1</a>
				</li>
				<li>
					 <a href="#">2</a>
				</li>
				<li>
					 <a href="#">3</a>
				</li>
				<li>
					 <a href="#">4</a>
				</li>
				<li>
					 <a href="#">5</a>
				</li>
				<li>
					 <a href="#">Next</a>
				</li>
			</ul>
		</div>
	</div>
</div>


</body>
</html>