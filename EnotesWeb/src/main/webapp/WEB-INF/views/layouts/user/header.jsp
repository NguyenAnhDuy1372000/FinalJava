<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<a class="navbar-brand" href='<c:url value="/"/>'><i class="fa fa-book" aria-hidden="true"></i> ENotes </a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href='<c:url value="/home"/>'><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item">
			<a class="nav-link" href='<c:url value="/newNote"/>'><i class="fa fa-plus-circle" aria-hidden="true"></i> Add Notes </a></li>

			<li class="nav-item">
			<a class="nav-link " href='<c:url value="/notes"/>'><i class="fa fa-address-book-o" aria-hidden="true"></i> Show Notes </a>
			</li>
		</ul>
		<c:choose>
			<c:when  test = "${sessionScope.user != null}">
				<a href="" class="btn btn-light my-2 my-sm-0 mr-2" data-toggle="modal" data-target="#exampleModal"
			type="submit"><i class="fa fa-user-circle-o" aria-hidden="true"></i>  </a>
			
			<a href='<c:url value="/logout"/>' class="btn btn-light my-2 my-sm-0 mr-2" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Logout </a>
			
			</c:when>
			<c:otherwise>
				<a href='<c:url value="/login"/>' class="btn btn-light my-2 my-sm-0 mr-2" type="submit"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Login </a>
				<a href='<c:url value="/logout"/>' class="btn btn-light my-2 my-sm-0 mr-2" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Register </a>
		
			
			</c:otherwise>
		</c:choose>
		<%-- <ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href='<c:url value="/home"/>'><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item">
			<a class="nav-link" href='<c:url value="/newNote"/>'><i class="fa fa-plus-circle" aria-hidden="true"></i> Add Notes </a></li>

			<li class="nav-item">
			<a class="nav-link " href='<c:url value="/notes"/>'><i class="fa fa-address-book-o" aria-hidden="true"></i> Show Notes </a>
			</li>
		</ul>
		
			<a href="" class="btn btn-light my-2 my-sm-0 mr-2" data-toggle="modal" data-target="#exampleModal"
			type="submit"><i class="fa fa-user-circle-o" aria-hidden="true"></i>  </a>
			
			<a href="href='<c:url value="/logout"/>'" class="btn btn-light my-2 my-sm-0 mr-2" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Logout </a>
			 --%>


		<!-- Button trigger modal -->

	</div>
			<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thông tin người dùng</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
			<div class="container text-center">
				<i class="fa fa-user fa-3x"></i>
				<h5></h5>
				<table class="table">
				<tbody>
					<tr>
						<th>User Id</th>
						<td>${ sessionScope.user.id }</td>
					</tr>
					
					<tr>
						<th>Full Name</th>
						<td>${ sessionScope.user.name }</td>
					</tr>
					
					<tr>
						<th>Email Id</th>
						<td>${ sessionScope.user.email }</td>
					</tr>
				</tbody>
				
				</table>
				
				<div>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
				
			</div>



      </div>
  
    </div>
  </div>
</div>
			
	


</nav>