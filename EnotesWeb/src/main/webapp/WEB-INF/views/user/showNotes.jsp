
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>

</head>
<body>

	<div class="container">
		<h2>All Notes:</h2>
		<c:forEach items="${ posts }" var="post">
			${ post.id } <br />
		</c:forEach>
		<div class="row">
			<div class="col-md-12">
				
					<div class="card mt-3">
					<img alt="" src="img/star.png" class="card-img-top mt-2 mx-auto"
						style="max-width: 100px;">

					<div class="card-body p-4">


						<h5 class="card-title"></h5>
						<p>
						</p>


						<p>
							<b class="text-success"></b></br> <b
								class="text-primary"></b> <b class="text-success"> 
								Date: </b></br> <b class="text-success"></b>
						</p>

						<div class="container text-center mt-2">
							<a href="deleteServlet?note_id=" class="btn btn-danger">Delete</a> 
							
							<a href="edit.jsp?note_id=" class="btn btn-primary">Edit</a>
						</div>
					</div>

				</div>
				



			</div>
		</div>
	</div>
</body>
</html>