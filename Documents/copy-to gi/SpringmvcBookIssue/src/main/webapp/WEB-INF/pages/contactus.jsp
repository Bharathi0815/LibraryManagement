<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact us</title>
</head>
 <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
            <link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">
             <link href="${pageContext.request.contextPath}/css/contactus.css" rel="stylesheet">
<body>
  <nav class="navbar navbar-expand-lg navbar-custom fixed-top">
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
                            <li class="nav-item"><a class="nav-link" href="contactus.html" 
                             onclick="window.location.href='${pageContext.request.contextPath}/user/contactus';return false">Contact Us</a>
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

<div class="contact3 py-5">
  <div class="row no-gutters">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="card-shadow">
          <br>
          <br>
          <br>
          <img src="${pageContext.request.contextPath}/images/contactimage2.jpeg" class="img-fluid" >
          <!--<img src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/contact/2.jpg" class="img-fluid">  -->
            
          </div>
        </div>
        <div class="col-lg-6">
          <div class="contact-box ml-3">
            <h1 class="font-weight-light mt-2">Quick Contact</h1>
            <form:form class="mt-4"     action="savecontact" method="post" modelAttribute="contact"   >
              <div class="row">
                <div class="col-lg-12">
                  <div class="form-group mt-2">
                 
                    <form:input class="form-control" path="name" type="text" placeholder="name" required="required"/>
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form-group mt-2">
                    <form:input class="form-control" type="email" path="email" placeholder="email address"  required="required" />
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form-group mt-2">
                    <form:input class="form-control" type="text" path="phone" placeholder="phone" required="required"/>
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form-group mt-2">
                    <form:textarea class="form-control" rows="3" path="message" placeholder="message" required="required"/>
                  </div>
                </div>
                <div class="col-lg-12">
                  <button type="submit" class="btn btn-danger-gradiant mt-3 text-white border-0 px-3 py-2"><span> SUBMIT</span></button>
                </div>
              </div>
            </form:form>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="card mt-4 border-0 mb-4">
            <div class="row">
              <div class="col-lg-4 col-md-4">
                <div class="card-body d-flex align-items-center c-detail pl-5">
                  <div class="mr-3 align-self-center">
                    <img  src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/contact/icon1.png">
                  </div>
                  <div class="">
                    <h6 class="font-weight-medium">Address</h6>
                    <p class="">601 Sherwood Ave.
                      <br> San Bernandino</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-4">
                <div class="card-body d-flex align-items-center c-detail pl-5">
                  <div class="mr-3 align-self-center">
                    <img src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/contact/icon2.png">
                  </div>
                  <div class="">
                    <h6 class="font-weight-medium">Phone</h6>
                    <p class="">251 546 9442
                      <br> 630 446 8851</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-4">
                <div class="card-body d-flex align-items-center c-detail pl-5">
                  <div class="mr-3 align-self-center">
                    <img src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/contact/icon3.png">
                  </div>
                  <div class="">
                    <h6 class="font-weight-medium">Email</h6>
                    <p class="">
                      info@wrappixel.com
                      <br> 123@wrappixel.com
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
                         
</body>
</html>