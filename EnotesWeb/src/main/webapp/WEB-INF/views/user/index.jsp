
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
			<h1 class="text-white">
				<i class="fa fa-book" aria-hidden="true"></i>E Note-Save Your Notes
			</h1>

		</div>

		<div class="row ">
			<div class="col-lg-9 col-md-8 col-sm-6">
				<div class="card">
					<div class="card-header"><h3>Ina's joke</h3></div>
					<div class="card-body">
						<h5 class="card-title">Special title treatment</h5>
						<p class="card-text">Despite her Lovecraftian-themed
							appearance, Ina is gentle, peaceful and down-to-earth. She is
							considerate and kind; Takanashi Kiara relates that when she is
							down, Ina is always the first to message her. In complete
							contrast to the salty gremlin Amelia, Ina has near-infinite
							patience and is widely considered the most well-behaved member of
							her generation. Ina is infamous for her use of puns and dry
							delivery of "dad jokes."</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6 body-img-wrapper">
				<img src="${resourcespath}/emo.png" alt="you got no image" class="body-img"/>
			</div>
		</div>
		<br />
		<div class="row ">
			<div class="col-lg-3 col-md-4 col-sm-6 body-img-wrapper">
				<img src="${resourcespath}/fbk.png" alt="you got no image" class="body-img"/>
			</div>
			<div class="col-lg-9 col-md-8 col-sm-6 ">
				<div class="card">
					<div class="card-header"><h3>smol fbk</h3></div>
					<div class="card-body">
						<h5 class="card-title">Lorem Ipsum</h5>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc congue fringilla leo. Vestibulum dictum pharetra nulla, id ultricies tortor eleifend eu. Quisque quis libero auctor, lobortis neque pharetra, suscipit eros. Aenean vulputate gravida dapibus. Aenean molestie sed purus non molestie. Quisque pulvinar, lorem eget mollis hendrerit, purus ligula vestibulum velit, vel fermentum elit ipsum eget urna. Aliquam erat volutpat. Aenean dolor nulla, condimentum tempus neque eget, sodales venenatis nulla. Vivamus blandit gravida nunc, eget elementum ligula. Nullam vulputate nec erat eget blandit. Aliquam lectus libero, aliquet sit amet congue id, eleifend nec lectus. Sed vehicula molestie tortor, a vestibulum eros dapibus consectetur. Quisque tincidunt nisi quis arcu eleifend gravida.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>