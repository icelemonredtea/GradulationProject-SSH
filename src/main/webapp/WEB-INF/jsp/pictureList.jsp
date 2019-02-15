<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table align="center" width="1100px">
	<tr>
		<th>原始图像</th>
		<th>分割图像</th>
	</tr>
	
	<tr>
	<td height="500px"><img alt="未加载" src="${pageContext.request.contextPath}/file/src/${uploadpictureFileName}"
						width="800" height="460">
	</td>
	<td height="500px"><img alt="无图像" src="${pageContext.request.contextPath}/file/dest/${uploadpictureFileName}"
						width="800" height="460">
	
	</td>
	
	</tr>
	
</table>

<a href="${pageContext.request.contextPath}/pictureSelect.action">
				<button type="button">返回选择页面</button>
		</a>

</body>
</html>