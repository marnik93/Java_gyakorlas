<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@include file="head.jsp" %>
<%@ page import="java.util.List"%>
<%@ page import="hu.sol.kvki.book.bean.Book" %>

<% List<Book> books = (List<Book>)session.getAttribute("books");%>
<head>
	<title>Könyvtár</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Könyv címe</th>
			<th>Szerző</th>
			<th>edit</th>
			<th>details</th>
		</tr>
		<c:forEach items="${books}" var="book">
			<tr>
				<td><c:out value="${book.name}"/></td>
				<td><c:out value="${book.author}"/></td>
				<td><input/></td>
				<td><input/></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>