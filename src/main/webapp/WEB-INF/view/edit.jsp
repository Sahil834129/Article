<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
</head>
<body>
	<div class="main">
		<div class="nav">

			<div class="left">Edit Articles</div>
			<div class="right">

				<a class="list-btn" href="list"> <i class="fas fa-bars"></i>List
				</a>
			</div>

		</div>



		<div class="form">
			<form action="${pageContext.request.contextPath }/updateArticle"
				method="post">

				<input type="hidden" name="id" value="${article.id}">

				<div class="row-1">
					<div class="title">
						<label for="title">Title *</label><br> <input type="text"
							id="title" name="title" value="${article.title }">
					</div>

					<div class="search">
						<label for="search">Authors &nbsp &nbsp &nbsp &nbsp &nbsp
							&nbsp <&nbsp- Multi select dropdown</label><br> <input type="email"
							placeholder="Search" class="search-input" id="email" name="email"
							class="form-control" value="${article.email }">
					</div>

					<div class="public-url">
						<label for="url">Public URL</label><br> <input type="url"
							id="url" name="url">
					</div>
				</div>


				<div class="row-2">
					<div class="article-date">
						<label for="date">Article Date *</label><br> <input
							type="date" id="date" name="date" value="${article.date }">
					</div>

					<div class="select">
						<label for="search">Access Category</label><br> <input
							type="select" placeholder="Free" class="select">
					</div>

					<div class="expiry-date">
						<label for="date">Free View Expiry</label><br> <input
							type="date" name="expirydate" value="${article.expirydate }">
					</div>
				</div>


				<div class="row-3">
					<div class="description">
						<label for="description">Description</label><br> <input
							type="text" id="description" name="description">
					</div>

					<div class="image-file">
						<label for="search">Featured Image: 850w*700h *</label><br> <input
							type="file" class="image-file" id="image" name="image">
					</div>

				</div>

				<div class="description-text">
					For in-text advertisement, add this "display-middle-ads-here<br>
					text in the description
				</div>

				<div class="button-sl">
					<button class="save-btn" type="submit">
						<i class="fas fa-check"></i>Update
					</button>
					<a class="list-btn" href="list"> <i class="fas fa-bars"></i>List
					</a>
				</div>
			</form>
		</div>



		<div class="text-mandatory">(*) All fields are mandatory.</div>

	</div>
</body>
</html>