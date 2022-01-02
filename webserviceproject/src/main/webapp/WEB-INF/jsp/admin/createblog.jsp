<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="../css/main.css">
<title>Create Blog</title>
</head>
<body>
	<div class="container">
		<%@include file="../views/navbar.jsp" %>
		<div class="left-right">
		<div class="left">
		<%@include file="../views/menu.jsp" %>
		</div>
		<div class="right">
		<div class="right-form">
		<form:form action="create-blog" method="post" modelAttribute="Blog" class="formobje">
			<form:label path="id">Id</form:label>
			<form:input path="id"/>
			<form:label path="a">Title</form:label>
			<form:input path="a" class="title"/>
			<form:label path="b">Subject</form:label>
			<form:textarea path="b" class="subject"/>
			<form:button class="submit">Gönder</form:button>
		</form:form>
		</div>
		</div>
		</div>
	</div>
</body>
</html>