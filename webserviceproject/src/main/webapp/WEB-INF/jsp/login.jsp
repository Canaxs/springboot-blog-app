<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	margin:0;
	overflow-y: hidden;
	background: linear-gradient(180deg,#babfff,#96faff);
	font-family: Arial, Helvetica, sans-serif;
}
.container {
	width:100%;
	height:1000px;
	display:flex;
	justify-content: center;
	align-items: center;
}
.panel {
	color:white;
	text-shadow: 1px 1px gray;
	background-color:black;
	padding: 50px 90px 50px 90px;
	display: inline-block;
	box-shadow: 10px 5px 5px gray;
}
.panel input[type="text"],.panel input[type="password"]{
	border:0;
	background: none;
	display: block;
	margin: 5px auto;
	text-align: center;
	border-radius:23px;
	padding:14px 10px;
	outline:none;
	color:white;
	border: 2px solid #96faff;
	transition:0.25s;
}
.panel input[type="text"]:focus,.panel input[type="password"]:focus{
	padding: 20px 15px;
	border-color: #babfff;
}
.panel input[type="submit"]{
	border:0;
	background: none;
	display: block;
	margin: 5px auto;
	text-align: center;
	color:white;
	border-radius:23px;
	padding:20px 30px;
	outline:none;
	border: 2px solid #96faff;
	transition:0.25s;
}
.panel input[type="submit"]:hover {
	cursor:pointer;
}

</style>
<body>
	<div class="container">
		<div class="panel">
		<table>
			<tr>
				<td colspan="2"><h1>Admin Login</h1></td>
			</tr>
			<form action="login" method="post">
			<tr>
				<td><input name="username" type="text" placeholder="Username"/><br /> </td>
			</tr>
			<tr>
				<td><input name="password" type="password" placeholder="Password"/><br /> </td>
			</tr>
			<tr>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<td colspan="2" align="center">Remember Me:<input name="remember-me" type="checkbox"><br /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">	<input type="submit" value="Login"></td>
			</tr>
			</form>
		 	<tr>
		 	<td><c:if test="${not empty param.loginFailed}">
			<c:out value="Login Failed, Incorrect Username or Password"></c:out></td>
			</tr>
		</c:if>
		</table>
		</div>
	</div>
</body>
</html>