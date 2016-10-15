<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@include file="head.jsp" %>
<head>
	<title>Könyv felvétel</title>
</head>
<body>
<jsp:useBean id="book" scope="request" class="hu.sol.kvki.book.bean.Book" />
	<form action="book_edit" method="post">
	<table border="1">
		<tr>
			<td>Könyv azonosító</td>
			<td><input name="id" value="<jsp:getProperty property="id" name="book"/>"/></td>
		</tr>
		<tr>
			<td>Könyv Címe</td>
			<td><input name="name" value="<jsp:getProperty property="name" name="book"/>"/></td>
		</tr>
		<tr>
			<td>Leírás</td>
			<td><input name="desc" value="<jsp:getProperty property="desc" name="book"/>"/></td>
		</tr>
		<tr>
			<td>Szerző</td>
			<td><input name="author" value="<jsp:getProperty property="author" name="book"/>"/></td>
		</tr>
		<tr>
			<td>Kiadás éve</td>
			<td><input name="pubYear" value="<jsp:getProperty property="pubYear" name="book"/>"/></td>
		</tr>
	</table>
	<input type="submit"/>
	</form>
</body>
</html>