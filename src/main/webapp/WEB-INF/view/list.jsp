<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/list.css"/>">
</head>
<body>
	<div class="main">
		<div class="nav">

			<div class="left">Article</div>
			<div class="right">
				<a class="add-article" href="article"> <i class="fas fa-plus"></i>Add
					Article
				</a>
			</div>
		</div>

		<div class="text-dte">
			<h2>Data Table Example</h2>
		</div>

		<table id="dataTable">

			<tr>
				<th>Id</th>
				<th>Title</th>
				<th>Date</th>
				<th>Email</th>
				<th>Expiry Date</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${articleList }" var="article">
				<tr>
					<td>${article.id}</td>
					<td>${article.title }</td>
					<td>${article.date }</td>
					<td>${article.email }</td>
					<td>${article.expirydate }</td>

					<td><a href="editArticle/${article.id }" class="add-article">
							<i class="fas fa-pencil-alt"></i>Edit
					</a><a class="add-article" href="#"> <i class="fas fa-trash-alt"></i>Delete
					</a></td>

				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>