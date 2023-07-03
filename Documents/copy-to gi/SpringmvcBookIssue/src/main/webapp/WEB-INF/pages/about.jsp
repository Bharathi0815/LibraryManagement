<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>about page</title>
</head>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
            <link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">
            
           

<body>

 

 <nav class="navbar navbar-expand-lg  navbar-custom fixed-top">
                    <a class="navbar-brand" href="#">Library Management</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto"><li class="nav-item"><a class="nav-link" href="home.jsp"
                                        onclick="window.location.href='${pageContext.request.contextPath}/user/home';return false">Home</a>
                                </li>
                                
                                
                                <li class="nav-item"><a class="nav-link" href="contactus.jsp" 
                             onclick="window.location.href='${pageContext.request.contextPath}/contact/contactus';return false">Contact Us</a>
                            </li>
                                
                                
                                
                            <li class="nav-item"><a class="nav-link" href="href="about.jsp"  onclick="window.location.href='${pageContext.request.contextPath}/user/about';return false">About</a></li>
                           
                            <li class="nav-item"><a class="nav-link" href="loginform.jsp"
                                    onclick="window.location.href='${pageContext.request.contextPath}/user/login';return false">Logout</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="loginform.jsp"
                                    onclick="window.location.href='${pageContext.request.contextPath}/user/roleauthenticate';return false">MyAccountDetails</a>
                            </li>
                        </ul>
                    </div>
                </nav>




<br>
<br>
<br>

<div>
                <h1 align="center"> About us</h1>
<h3>

The library management system allows a library to keep track of all its books, and also manage its members. Some of the services offered by a library management system include book requests by the members of the library, and denial or issuance of the requests by the librarian.

The system has several modules that serve various functions. The acquisition module manages the ordering, purchase and receipt of books for use in the library, thereby keeping records of all incoming books. The cataloging module classifies and indexes books received in the library. This helps the library record all its books, while making also making it easier to access a new book.

New books are indexed by a unique code or book ID that will simplify the identification process. The circulation module helps the library better manage the distribution process. The library, through the circulation module, can track all books loaned out to library users, and books returned.





</h3>
</div>

<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>