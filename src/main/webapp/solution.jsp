<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="color: red; text-align: center;"><% out.print("处理中...");%></h1>

<h2 style="color: black;">数据库中数据</h2>

<s:property value="fileName"/>
<s:debug></s:debug>
<table border="1" cellspacing="0">
	<tr>
		<th style="color: red">id</th>
		<th style="color: red">date</th>
		<th style="color: red">method</th>
		<th style="color: red">content</th>
		<th style="color: red">FileName</th>
		<th style="color: red">ContentType</th>
		<th style="color: red">delete</th>
	</tr>

	<c:forEach var="list" items="${pictures}">
	<tr>
		<td>${list.id}</td>
		<td>${list.date }</td>
		<td>${list.method}</td>
		<td>${list.content}</td>
		<td>${list.uploadpictureFileName}</td>
		<td>${list.uploadpictureContentType}</td>
		<td><a href="${pageContext.request.contextPath}/deletePicture.action }"></a></td>		
	</tr>
	</c:forEach>
	<tr>
		<td colspan="6" align="center"><a href="${pageContext.request.contextPath}/index.jsp">返回</a></td>
	</tr>
</table>

</body>
</html>