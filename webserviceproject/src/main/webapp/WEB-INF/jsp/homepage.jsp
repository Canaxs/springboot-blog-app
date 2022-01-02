<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/home.css">
<title>Home</title>
</head>
<body>
<div class="container">
	<div class="blog-alan">
	<c:forEach items="${bilgi}" var="bilgi" varStatus="status">
			<div class="blog-post">
				<div class="blog-post-img">
				<img src="../images/foto.jpg">
				</div>
				<div class="blog-post-info">
					<h2 class="blog-post-title">${bilgi.a}(${bilgi.id })</h2>
					<p class="blog-post-subject">${bilgi.b }</p>
					<a href="read/${bilgi.id}" class="blog-post-submit">Read More</a>
				</div>
			</div>
			</c:forEach>
	</div>
</div>
</body>
</html>