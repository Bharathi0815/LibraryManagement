<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
 <link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userlist</title>
</head>
  
<body>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" >
	<a class="navbar-brand" href="#">Library Management</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/user/adduser">AddUser</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/booksissue/issuedbookslist">IssuedBookList</a>
			</li>
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
	
	<div class="container-fluid mt-5 pt-5">
		<h2 align="center">Users List</h2>
		<div>
		<button type="button" class="btn btn-primary"
			onclick="window.location.href='./adduser';return false">AddUser</button>
	</div>


     <c:if test="${not empty deleteuser}" >
	<h5 align="center" text-success">${deleteuser}</h5>
			<c:remove var="deleteuser"/>
  </c:if>
  
  <c:if test="${not empty updateuser}" >
	<h5 align="center" text-success">${updateuser}</h5>
			<c:remove var="updateuser"/>
			</c:if>

		<table class="table table-bordered table-hover">
			<thead class="thead-light">
				<tr>
					<th>User-Id</th>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Role</th>
					<th>Update Record</th>
					<th>Delete Record</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}">
					<c:url var="updatelink" value="/user/updateuserform">
						<c:param name="userId" value="${user.userId}" />
					</c:url>

					<c:url var="deletelink" value="/user/deleteuser">
						<c:param name="userId" value="${user.userId}" />
					</c:url>
					<tr>
						<td>${user.userId}</td>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.role}</td>
						<td><a href="${updatelink}" class="btn btn-primary">Update</a></td>
						<td><a onclick="deleteChecker()" href="${deletelink}"
							class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script>
		function deleteChecker() {

			var result = confirm('Are you sure you want to delete?');
			if (result == false) {
				event.preventDefault();

			}
		}
	</script>

</body>
</html>