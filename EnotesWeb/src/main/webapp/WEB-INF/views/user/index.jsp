
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/notes1.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}

.body-img {
	width: 250px;
	height: 250px;
	object-fit: cover;
}
</style>
<meta charset="UTF-8">
<title>Home Page</title>
<c:url value="/resources/" var="resourcespath" />
</head>
<body>

	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white">
				<i class="fa fa-book" aria-hidden="true"></i>E Note-Save Your Notes
			</h1>
			<a href='<c:url value="/login"></c:url>' class="btn btn-light"> <i
				class="fa fa-user-circle-o" aria-hidden="true"></i> Login
			</a> <a href='<c:url value="/register"></c:url>' class="btn btn-light"><i
				class="fa fa-user-plus" aria-hidden="true"></i> Register </a>
		</div>

		<div class="row ">
			<div class="col-lg-9">
				<div class="card">
					<div class="card-header">Ina's joke</div>
					<div class="card-body">
						<h5 class="card-title">Special title treatment</h5>
						<p class="card-text">Despite her Lovecraftian-themed appearance, Ina is gentle, peaceful and down-to-earth. She is considerate and kind; Takanashi Kiara relates that when she is down, Ina is always the first to message her. In complete contrast to the salty gremlin Amelia, Ina has near-infinite patience and is widely considered the most well-behaved member of her generation.
Ina is infamous for her use of puns and dry delivery of "dad jokes."</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<img src="${resourcespath}emo.png" alt="you got no image"
					class="body-img" />
			</div>
		</div>
	</div>
</body>
</html>