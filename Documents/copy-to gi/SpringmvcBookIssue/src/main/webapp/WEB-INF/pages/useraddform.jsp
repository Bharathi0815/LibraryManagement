<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
                    <link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New User Form</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top">
	<a class="navbar-brand" href="#">Library Management</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/booksissue/issuebookform">Issue
					Book</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/booksissue/issuedbookslist">IssuedBookList</a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/user/userlist">User
					List</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
		  
                                <li class="nav-item"><a class="nav-link" href="href="about.jsp"  onclick="window.location.href='${pageContext.request.contextPath}/user/about';return false">About</a>
                                
			</li>
			
			<li class="nav-item"><a class="nav-link" href="contactus.jsp" 
                             onclick="window.location.href='${pageContext.request.contextPath}/contact/contactus';return false">Contact Us</a>
                            </li>
			<li class="nav-item"><a class="nav-link" href="home.jsp"
				onclick="window.location.href='${pageContext.request.contextPath}/user/home';return false">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="loginform.jsp"
				onclick="window.location.href='${pageContext.request.contextPath}/user/login';return false">Logout</a></li>
		</ul>
	</div>
	</nav>

	<div class="container mt-5 pt-5 mx-auto">
		<h3 class="text-center">User Registration</h3>
		<form action="saveuser" method="post" modelAttribute="user"
			class="needs-validation">
			<c:if test="${not empty msg}">
			
			<h5 align="center" text-success">${msg}</h5>
			<c:remove var="msg"/>
			</c:if>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="form-group row">
						<label for="firstName">First Name</label> <input type="text"
							class="form-control" id="firstName" name="firstName" required="required">

					</div>
					<div class="form-group row">
						<label for="lastName">Last Name</label> <input type="text"
							class="form-control" id="lastName" name="lastName" required="required">


					</div>
					<div class="form-group row">
						<label for="password">Password</label> <input type="password"
							class="form-control" id="password" name="password" required="required">

					</div>
					<div class="form-group row">
						<label for="role">Role</label> <input type="text"
							class="form-control" id="role" name="role" required="required">


					</div>
					<div class="row justify-content-center">
						<div class="form-group row">
							<button type="submit" class="btn btn-primary">Add User</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>




	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>