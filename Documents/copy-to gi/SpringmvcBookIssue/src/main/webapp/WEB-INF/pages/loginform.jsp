<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>
            <head>
                <!-- this style tag is to avoid dropdown from userId input type="numeric" -->
               
               
                <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
                 <link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Login Form</title>
            </head>
            <body>
            
            
               <nav class="navbar navbar-expand-lg  navbar-custom fixed-top">
                    <a class="navbar-brand" href="#">Library Management</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
                                    onclick="window.location.href='${pageContext.request.contextPath}/user/login';return false">Logout</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="loginform.jsp"
                                    onclick="window.location.href='${pageContext.request.contextPath}/user/roleauthenticate';return false">MyAccount</a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <br>
                <br>
                <br>
                <br>
                        
                        
                        
           
                                     
<div class="container mt-5 pt-5">
<img alt="libraryimage"   class="center"alt="librarylogo"  src="${pageContext.request.contextPath}/images/librarylogo3.png"/>
                    <h3 class="text-center">Login</h3>
                    <form:form action="loginauthenticate" method="post" modelAttribute="user">
                        <form:hidden path="role" />
                        <c:if test="${not empty msg}">
                            <h5 align="center" text-failure">${msg}</h5>
                            <c:remove var="msg" />
                        </c:if>
                        <div class="row justify-content-center">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="userId">UserId</label>
                                    <input type="number" name="userId" id="userId" class="form-control" 
                                        required="required" />
                                    <div class="invalid-feedback">Please enter a username.</div>
                                </div>
                            </div>
                        </div>

                        <div class="row justify-content-center">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <form:input type="password" path="password" id="password" required="required"
                                        class="form-control" />
                                    <div class="invalid-feedback">Please enter a password.</div>
                                </div>
                            </div>
                        </div>

                        <div class="row justify-content-center">
                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary btn-block">Login</button>
                            </div>
                        </div>
                    </form:form>
                </div>
                
                <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
            </body>
            </html>