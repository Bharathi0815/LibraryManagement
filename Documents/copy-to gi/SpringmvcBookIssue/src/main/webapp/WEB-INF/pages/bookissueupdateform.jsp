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
<title>IssueBookForm</title>
</head>

<body>
<nav class="navbar navbar-expand-lg fixed-top">
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
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/user/userlist">User
					List</a></li>
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

<div class="container mt-5 pt-5">
  <h3 class="text-center"> Update Book Issued</h3>
  <form:form action="saveupdate" method="post" modelAttribute="bookissue" class="needs-validation">
   <form:hidden path="transId"/>
   
    <div class="row justify-content-center">
    
      <div class="col-md-4">
        <div class="form-group">
          <label for="stdId">StudentId</label>
          <form:input type="text" id="stdId" path="stdId" class="form-control"  />
        </div>
        <div class="form-group">
          <label for="firstName">FirstName</label>
          <form:input type="text" id="firstName" path="firstName"   class="form-control" />
        </div>
        <div class="form-group">
          <label for="lastName">LastName</label>
          
          <form:input type="text" id="lastName" path="lastName"   class="form-control" />
        </div>
        <div class="form-group">
          <label for="bookId">BookId</label>
          <form:input type="text" id="bookId" path="bookId"   class="form-control" />
        </div>
        <div class="form-group">
          <label for="bookName">BookName</label>
          <form:input type="text" id="bookName" path="bookName"  class="form-control" />
        </div>
        <div class="form-group">
          <label for="authorName">AuthorName</label>
          <form:input type="text" id="authorName" path="authorName"  class="form-control" />
        </div>
        <div class="form-group">
          <label for="issueDate">IssueDate</label>
          <form:input    id="issueDate" path="issueDate" readonly="true" class="form-control"/>
        </div>
        <div class="row justify-content-center">
        <div class="form-group">
          <input type="submit" value="Update" class="btn btn-primary">
        </div>
        </form:form>  
        </div>
      </div>
    </div>

</div>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>