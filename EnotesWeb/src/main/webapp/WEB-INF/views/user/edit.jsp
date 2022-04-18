
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Notes</title>

</head>
<body>
	<div class="container-fuild">
		<h1 class="text-center">Edit Your Notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action='<c:url value="/edit/${post.id}"></c:url>' method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required"
								value="${ post.title }">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Content</label>
							<textarea rows="8" cols="" class="form-control" name="content"
								required="required"> ${ post.content } </textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Save Change</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>