
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Home Page</title>
<c:url value="/resources" var="resourcespath" />
</head>
<body>

	<div class="container-fluid back-img">
		<div class="text-center">
			<h1>
				<i class="fa fa-book" aria-hidden="true"> E Note-Save Your Notes</i>
			</h1>
		</div>
		<br />
		<div class="row ">
			<div class="col-lg-9 col-md-8 col-sm-6">
				<div class="card">
					<div class="card-header">
						<h3>Smol Ina</h3>
					</div>
					<div class="card-body">
						<h5 class="card-title">Ina, the Pun-stopable</h5>
						<p class="card-text">
							Let me think of a pun,<br /> 
							I'll come back,<br /> 
							Ina-bit...<br />
						</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6 body-img-wrapper">
				<img src="${resourcespath}/emo.png" alt="you got no image"
					class="body-img" />
			</div>
		</div>
		<br />
		<div class="row ">
			<div class="col-lg-3 col-md-4 col-sm-6 body-img-wrapper">
				<img src="${resourcespath}/a.png" alt="you got no image"
					class="body-img" />
			</div>
			<div class="col-lg-9 col-md-8 col-sm-6 ">
				<div class="card">
					<div class="card-header">
						<h3>Shork</h3>
					</div>
					<div class="card-body">
						<h5 class="card-title">a</h5>
						<p class="card-text"></p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
		</div>
		<br />
	</div>
</body>
</html>