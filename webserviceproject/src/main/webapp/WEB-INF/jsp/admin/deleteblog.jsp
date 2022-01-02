<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/main.css">
<title>Delete Blog</title>
</head>
<body>
	<div class="container">
	<%@include file="../views/navbar.jsp" %>
		<div class="left-right">
		<div class="left">
		<%@include file="../views/menu.jsp" %>
		</div>
		<div class="right" style="display:flex;justify-content: center;align-items:center;">
		<form:form action="delete-blog" method="post" modelAttribute="Blog" class="formobje">
		<h2>Id</h2>
		  <form:select path="id">  
				<c:forEach items="${bilgi}" var="bilgi" varStatus="status"> 
				 <form:option value="${bilgi.id}">${bilgi.id}(${bilgi.a})</form:option> 			
				</c:forEach>
			</form:select>
				<form:button class="submit">Sil</form:button>
		</form:form>

		</div>
	</div>
</body>
</html>