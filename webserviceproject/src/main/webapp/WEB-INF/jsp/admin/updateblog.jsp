<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/main.css">
<title>Update Blog</title>
</head>
<body>
<div class="container">
	<%@include file="../views/navbar.jsp" %>
		<div class="left-right">
		<div class="left">
		<%@include file="../views/menu.jsp" %>
		</div>
		<div class="right" style="display:flex;justify-content: center;align-items:center;flex-direction: column">
		<c:if test="${tek == null }">
			<form:form action="update-blog" method="post" modelAttribute="Blog" class="formobje">
			<h2>Id</h2>
		 	 <form:select path="id">  
				<c:forEach items="${bilgi}" var="bilgi" varStatus="status"> 
				 <form:option value="${bilgi.id}">${bilgi.id}(${bilgi.a})</form:option>		
				</c:forEach>
			</form:select>
				<form:button class="submit">Bilgileri Göster</form:button>
		</form:form>
		</c:if>
		<c:if test="${tek != null}">
		<h2>Bilgi Güncelleme ekrani</h2>
			<h3>Id: ${tek.id }</h3>
			 <form:form action="update2-blog" method="post" modelAttribute="Blog" class="formobje">
			 	<form:label path="id">Id</form:label>
				<form:input path="id"/>
				<form:label path="a">Title</form:label>
				<form:input path="a" class="title" value="${tek.a }"/>
				<form:label path="b">Subject</form:label>
				<form:textarea path="b"  value="deeme" class="subject"/>
				<form:button class="submit">Güncelle</form:button>
			 </form:form>
			 <a href="update-blog" class="geri">Geri Dön</a>
		</c:if>	
		</div>
		</div>
	</div>
</body>
</html>