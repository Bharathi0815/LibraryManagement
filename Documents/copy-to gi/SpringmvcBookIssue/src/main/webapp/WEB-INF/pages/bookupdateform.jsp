<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
 <link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">
                
	  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>book update</title>
</head>

<body>

<nav class="navbar navbar-expand-lg fixed-top" >
	<a class="navbar-brand" href="#">Library Management</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav mr-auto">
			
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/booksissue/issuedbookslist">IssuedBookList</a>
			</li>
			</ul>
		<ul class="navbar-nav ml-auto">
		<li class="nav-item"><a class="nav-link" href="href="about.jsp"  onclick="window.location.href='${pageContext.request.contextPath}/user/about';return false"></a>
		</li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			<li class="nav-item"><a class="nav-link" href="contactus.jsp" 
                             onclick="window.location.href='${pageContext.request.contextPath}/contact/contactus';return false">Contact Us</a>
                            </li>			<li class="nav-item"><a class="nav-link" href="home.jsp"
				onclick="window.location.href='${pageContext.request.contextPath}/user/home';return false">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="loginform.jsp"
				onclick="window.location.href='${pageContext.request.contextPath}/user/login';return false">Logout</a></li>
		</ul>
	</div>
	</nav>



 
 <div class="container mt-5 pt-5">
  <h3 class="text-center"> Update Book</h3>
  <form:form action="updatebook" method="post" modelAttribute="book" class="needs-validation">
   <form:hidden path="bookId"/>
   
    <div class="row justify-content-center">
    
      <div class="col-md-4">
        <div class="form-group">
          <label for="title">Title</label>
          <form:input type="text" id="title" path="title" class="form-control"  />
        </div>
        <div class="form-group">
          <label for="authorName">AuthorName</label>
          <form:input type="text" id="authorName" path="authorName"   class="form-control" />
        </div>
        <div class="form-group">
          <label for="category">Category</label>
          
          <form:input type="text" id="category" path="category"   class="form-control" />
        </div>
        <div class="form-group">
          <label for="publisher">Publisher</label>
          <form:input type="text" id="publisher" path="publisher"   class="form-control" />
        </div>
        <div class="form-group">
          <label for="price">Price</label>
          <form:input type="text" id="price" path="price"  class="form-control" />
        </div>
        <div class="form-group">
          <label for="noofCopies">NoofCopies</label>
          <form:input type="text" id="noofCopies" path="noofCopies"  class="form-control" />
        </div>
        
        <div class="row justify-content-center">
        <div class="form-group">
          <input type="submit" value="Update" class="btn btn-primary">
        </div>
        </form:form>  
        </div>
 
 
 
 
 
 
 
 

<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>