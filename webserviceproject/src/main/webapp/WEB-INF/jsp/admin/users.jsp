<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/main.css">
<title>Users</title>
</head>
<body>
<div class="container">
<%@include file="../views/navbar.jsp" %>
	<div class="left-right">
			<div class="left">
				<%@include file="../views/menu.jsp" %>
			</div>
			<div class="right" style="display:flex;justify-content:center;">
			<table border="1">
			<c:forEach items="${bigo}" var="bigo" varStatus="status">
				<tr>
					<td>Username: </td>
					<td>${bigo.username }</td>
				</tr>
			</c:forEach>
			</table>
			</div>
</div>
</div>
</body>
</html>