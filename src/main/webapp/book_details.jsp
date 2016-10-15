<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@include file="head.jsp" %>
<head>
	<title>Könyv adatai</title>
</head>
<body>
	<jsp:useBean id="book" scope="request" class="hu.sol.kvki.book.bean.Book" />
	<table border="1">
		<tr>
			<td>Könyv azonosító</td>
			<td><jsp:getProperty property="id" name="book"/></td>
		</tr>
		<tr>
			<td>Könyv Címe</td>
			<td><jsp:getProperty property="name" name="book"/></td>
		</tr>
		<tr>
			<td>Leírás</td>
			<td><jsp:getProperty property="desc" name="book"/></td>
		</tr>
		<tr>
			<td>Szerző</td>
			<td><jsp:getProperty property="author" name="book"/></td>
		</tr>
		<tr>
			<td>Kiadás éve</td>
			<td><jsp:getProperty property="pubYear" name="book"/></td>
		</tr>
	</table>
</body>
</html>