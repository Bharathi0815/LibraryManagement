<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
                    <link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listofbooks</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-custom fixed-top">
	<a class="navbar-brand" href="#">Library Management</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav mr-auto" id="mainnav">
			
			<li class="nav-item"><a class="nav-link" 
				href="${pageContext.request.contextPath}/booksissue/issuebookform" >Issue
					Book</a></li>
					<li class="nav-item"><a class="nav-link" 
				href="${pageContext.request.contextPath}/book/addbook" >Add
					Book</a></li>
				
		<!-- <li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/user/userlist">User
					List</a></li> -->	
		</ul>
		<ul class="navbar-nav ml-auto">
		<li class="nav-item"><a class="nav-link" href="home.jsp"
                                        onclick="window.location.href='${pageContext.request.contextPath}/user/home';return false">Home</a>
                                </li>
			  
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



<br>
<br>
 <br>    
<h1 align="center">Books List</h1>
	
	<!-- 	<button type="button" class="btn btn-primary"
			onclick="window.location.href='./addbook';return false">AddBook</button> --> 
	
	<c:if test="${not empty delete}" >
	<h5 align="center" text-success">${delete}</h5>
			<c:remove var="delete"/>
	
	</c:if>
	
	<c:if test="${not empty add}" >
	<h5 align="center" text-success">${add}</h5>
			<c:remove var="add"/>
	
	</c:if>
	<c:if test="${not empty updatemsg}" >
	<h5 align="center" text-success">${updatemsg}</h5>
			<c:remove var="updatemsg"/>
	
	</c:if>
	
	
	
	
	<br>
	<div>
		<table class="table table-bordered table-striped">
		<tr>
			<th>Title</th>
			<th>AuthorName</th>
			<th>Category</th>
			<th>Publisher</th>
			<th>Price</th>
			<th>NoofCopies</th>
			<th>Update Record</th>
			<th>Delete Record</th>
		</tr>
		<c:forEach var="book" items="${list}">
			<c:url var="updatelink" value="/book/updatebookform">
				<c:param name="bookId" value="${book.bookId}" />
			</c:url>

			<c:url var="deletelink" value="/book/deletebook">
				<c:param name="bookId" value="${book.bookId}" />
			</c:url>
			<tr>


				<td>${book.title}</td>
				<td>${book.authorName}</td>
				<td>${book.category}</td>
				<td>${book.publisher}</td>
				<td>${book.price}</td>
				<td>${book.noofCopies}</td>
				
				<td><a href="${updatelink}" class="btn btn-primary">Update</a></td>
				<td><a onclick="deleteChecker()"  href="${deletelink}" class="btn btn-danger">Delete</a></td>
				
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