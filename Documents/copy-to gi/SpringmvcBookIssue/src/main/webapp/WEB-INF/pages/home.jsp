<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>
            <head>
                
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>HOMEPAGE</title>
            </head>
            <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
            <link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">
            <body>
			
				 

                <nav class="navbar navbar-expand-lg navbar-custom fixed-top">
                    <a class="navbar-brand" href="#">Library Management</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item"><a class="nav-link" href= href="about.jsp"  onclick="window.location.href='${pageContext.request.contextPath}/user/about';return false">About</a></li>
                            <li class="nav-item"><a class="nav-link" href="contactus.jsp" 
                             onclick="window.location.href='${pageContext.request.contextPath}/contact/contactus';return false">Contact Us</a>
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

                <div class="container mt-5 pt-5">
                    <h3 class="text-center"> </h3>
                    <form:form align="justify" action="/book/process" method="post" modelAttribute="book"
                        class="needs-validation">
                        <div class="row justify-content-center">
                            <div class="col-sm-8 col-md-6">
                                <div class="input-group mb-3">
                                    <select class="form-select" name="option" id="option">
                                        <option>Title</option>
                                        <option>Author</option>
                                        <option>Category</option>
                                    </select>
                                    <input type="text" class="form-control" id="keyword" name="keyword"
                                        placeholder="Enter keyword to search" />
                                    <button type="submit" class="btn btn-primary">Search</button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>

               <div>
                    <img alt="libraryimage" src="${pageContext.request.contextPath}/images/tree.png"
                         />
                </div>
 
                <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
            </body>
            </html>