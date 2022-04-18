
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>
<c:url value="/resources" var="resourcespath" />
</head>
<body>

	<div class="container">
		<br />
		<h2>All Notes:</h2>
		<c:forEach items="${ posts }" var="post">
			<div class="row">
				<div class="col-md-12">
					<div class="card mt-3">
						<div class="card-body p-4">
							<img alt="" src="${resourcespath}/note-icon.png"
								class="card-img-top mt-2 mx-auto" style="max-width: 100px;">
							<h5 class="card-title">
								<b class="text-success">Title: </b> ${ post.title }
							</h5>
							<p><h6>${ post.content }</h6>
							<p>
								<b class="text-success">Published by: </b>${ sessionScope.user.name }</br>
								<b class="text-primary"></b> <b class="text-success"> Date:
								</b>${ post.pdate }</br> <b class="text-success"></b>
							</p>
							<div class="container text-right mt-2">
								<a href='<c:url value="/editnote/${post.id}"></c:url>'
									class="btn btn-primary">Edit</a> 
								<a href='<c:url value="/deletenote/${post.id}"></c:url>'
									class="btn btn-danger" type="submit">Delete</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br />
		</c:forEach>
	</div>
</body>
</html>