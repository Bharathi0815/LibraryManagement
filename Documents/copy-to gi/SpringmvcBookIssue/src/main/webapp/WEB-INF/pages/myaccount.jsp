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
<title>MyAccount</title>
</head>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
 <link href="${pageContext.request.contextPath}/css/stylesheeet.css" rel="stylesheet">

<body>
	<nav class="navbar navbar-expand-lg  fixed-top">
	<a class="navbar-brand" href="#">Library Management</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav ml-auto">
		<li class="nav-item"><a class="nav-link" href="home.jsp"
				onclick="window.location.href='${pageContext.request.contextPath}/user/home';return false">Home</a></li>
			  
                                <li class="nav-item"><a class="nav-link" href="href="about.jsp"  onclick="window.location.href='${pageContext.request.contextPath}/user/about';return false">About</a>
                                
			</li>
			<li class="nav-item"><a class="nav-link" href="contactus.jsp" 
                             onclick="window.location.href='${pageContext.request.contextPath}/contact/contactus';return false">Contact Us</a>
                            </li>
			<li class="nav-item"><a class="nav-link" href="loginform.jsp"
				onclick="window.location.href='${pageContext.request.contextPath}/user/login';return false">Logout</a></li>
		</ul>
	</div>
	</nav>

	<div class="container-fluid mt-5 pt-5">
		<h3 class="text-center">Account Details</h3>
		<div class="table-responsive">
			<table class="table table-bordered  table-hover">
				<thead class="thead-light">
					<tr>
						<th>Student-Id</th>
						<th>FirstName</th>
						<th>LastName</th>
						<th>Book-Id</th>
						<th>BookName</th>
						<th>AuthorName</th>
						<th>IssueDate</th>
						<th>DueDate</th>
						<th>BookStatus</th>
						<th>Fine</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="book" items="${bookissue}">
						<tr>
							<td>${book.stdId}</td>
							<td>${book.firstName}</td>
							<td>${book.lastName}</td>
							<td>${book.bookId}</td>
							<td>${book.bookName}</td>
							<td>${book.authorName}</td>
							<td>${book.issueDate}</td>
							<td>${book.dueDate}</td>
							<td>${book.bookStatus}</td>
							<td>${book.fine}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<!-- Bootstrap JavaScript -->
	<script>
		function logout() {
			console.log("Logout clicked");
			// Redirect to the login page
			window.location.href = "<c:url value='/loginform.jsp'/>";
		}
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>


</html>