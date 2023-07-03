<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SearchPage</title>
</head>
<body>

<div class="container mt-5 pt-5">
  <h3 class="text-center"> Search</h3>
  <form:form action="process" method="post" modelAttribute="book" class="needs-validation">
  
  
  <select  name="option">  
           <option>Title</option>
   <option>Author</option>
   <option>Category</option> 
   </select  id="option">
   <input type="text"  id="keyword" name="keyword" placeholder="Enter keyword to search"/>
    <button  type="submit">Search</button>
      
   
 
  



        
</form:form>
</div>







<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>