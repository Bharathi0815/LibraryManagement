<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>error page</title>
</head>
 <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
 <link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">
<body>
<h1 align="center"> 404 Error </h1>


 <nav class="navbar navbar-expand-lg  navbar-custom fixed-top">
                    <a class="navbar-brand" href="#">Library Management</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="home.jsp"
                                        onclick="window.location.href='${pageContext.request.contextPath}/user/home';return false">Home</a>
                                </li>
                             
                                <li class="nav-item"><a class="nav-link" href="href="about.jsp"  onclick="window.location.href='${pageContext.request.contextPath}/user/about';return false">About</a>
                                
			</li>
                           <li class="nav-item"><a class="nav-link" href="contactus.jsp" 
                             onclick="window.location.href='${pageContext.request.contextPath}/contact/contactus';return false">Contact Us</a>
                            <li class="nav-item"><a class="nav-link" href="loginform.jsp"
                                    onclick="window.location.href='${pageContext.request.contextPath}/user/login';return false">Logout</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="loginform.jsp"
                                    onclick="window.location.href='${pageContext.request.contextPath}/user/roleauthenticate';return false">MyAccount</a>
                            </li>
                        </ul>
                    </div>
                </nav>
<script type="text/javascript">
window.addEventListener('error', function(e) {
    console.log(e);
}, true);
</script>
<br>
<br>

<h2 align="center" >${exception}<button style="background-color:red;"        onclick="history.back()">Go Back</button></h2>



</body>
</html>