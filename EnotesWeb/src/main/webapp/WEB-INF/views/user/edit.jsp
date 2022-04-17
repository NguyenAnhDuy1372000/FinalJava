
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
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

					<form action="NoteEditServlet" method="post">
					<input type="hidden" value="" name="noteid">
						<div class="form-group">

							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required" value="">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Content</label>
							<textarea rows="8" cols="" class="form-control" name="content"
								required="required"></textarea>
						</div>




						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Edit Notes</button>
						</div>
					</form>

				</div>

			</div>

		</div>


	</div>
	
</body>
</html>