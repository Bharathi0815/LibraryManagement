<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
	 <link href="${pageContext.request.contextPath}/css/stylesheeet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1 align="center">Admin Form</h1>

<br>
	<div>
		<button type="button" class="btn btn-primary"
			onclick="window.location.href='${pageContext.request.contextPath}/booksissue/issuedbookslist';return false">BooksIssuedList</button>
			<button type="button" class="btn btn-primary"
			onclick="window.location.href='${pageContext.request.contextPath}/user/adduser';return false">AddMember</button>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/user/userlist">User
					List</a></li>
	</div>
	<br>	
	
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


</body>
</html>