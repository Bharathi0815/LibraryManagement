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
<title>BooksIssuedList</title>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light navbar-custom fixed-top">
                        <a class="navbar-brand" href="#">Library Management</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link" 
				href="${pageContext.request.contextPath}/booksissue/issuebookform" >Issue
					Book</a></li>
					<li class="nav-item"><a class="nav-link" 
				href="${pageContext.request.contextPath}/book/bookslist" >Book List
					</a></li>
					<li class="nav-item"><a class="nav-link" 
				href="${pageContext.request.contextPath}/book/addbook" >Add
					Book</a></li>
                        
                        </ul>
                            <ul class="navbar-nav ml-auto">
                         
                                <li class="nav-item"><a class="nav-link" href="href="about.jsp"  onclick="window.location.href='${pageContext.request.contextPath}/user/about';return false">About</a>
                                
			</li>
                               
                                <li class="nav-item"><a class="nav-link" href="contactus.jsp" 
                             onclick="window.location.href='${pageContext.request.contextPath}/contact/contactus';return false">Contact Us</a>
                            </li>
                                <li class="nav-item"><a class="nav-link" href="home.jsp"
                                        onclick="window.location.href='${pageContext.request.contextPath}/user/home';return false">Home</a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="loginform.jsp"
                                        onclick="window.location.href='${pageContext.request.contextPath}/user/login';return false">Logout</a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="loginform.jsp"
                                        onclick="window.location.href='${pageContext.request.contextPath}/user/roleauthenticate';return false">MyAccount</a>
                                </li>
                            </ul>
                        </div>
                    </nav>





























	
	<div class="container-fluid mt-5 pt-5">
		<h2 align="center">Books Issued</h2>
	
	
		<c:if test="${not empty noaccess}" >
	<h5 align="center" text-success">${noaccess}</h5>
			<c:remove var="noaccess"/>
	</c:if>
	${noaccess}
	
		<c:if test="${not empty issuebook}" >
	<h5 align="center" text-success">${issuebook}</h5>
			<c:remove var="issuebook"/>
	</c:if>
	
	
	<c:if test="${not empty deleteissue}" >
	<h5 align="center" text-success">${deleteissue}</h5>
			<c:remove var="deleteissue"/>
	</c:if>
	<c:if test="${not empty updateissue}" >
	<h5 align="center" text-success">${updateissue}</h5>
			<c:remove var="updateissue"/>
	</c:if>
		<table class="table table-bordered table-hover">
			<thead thead class="thead-light">
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
					<th>Update Record</th>
					<th>Delete Record</th>
				</tr>
			</thead>
			<c:forEach var="book" items="${booklist}">
				<c:url var="updatelink" value="/booksissue/showFormForUpdate">
					<c:param name="transId" value="${book.transId}" />
				</c:url>

				<c:url var="deletelink" value="/booksissue/deleteissuebook">
					<c:param name="transId" value="${book.transId}" />
				</c:url>
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
					<td><a href="${updatelink}" class="btn btn-primary">Update</a></td>
					<td><a onclick="deleteChecker()" href="${deletelink}"
						class="btn btn-danger">Delete</a></td>

				</tr>
			</c:forEach>
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