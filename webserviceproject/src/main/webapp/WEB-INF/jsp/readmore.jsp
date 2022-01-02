<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read</title>
</head>
<style>
body {
	margin:0;
	padding:0;
	font-family: 'Roboto', sans-serif;
	background-color: #eee;
	display:flex;
	justify-content:center;
	flex-direction: column;
	align-items:center;
}
.kard {
	width:90%;
	margin:5%;
	height:100%;
	padding:5rem;
	background-color:#fff;
	box-shadow:0 1.4rem 8rem rgba(0,0,0,.2);
	border-radius:.8rem;}
</style>
<body>
<div class="kard">
<h1>Id: ${bilgi.id}</h1>
<h3>Title: ${bilgi.a}</h3>
<h4>Subject: ${bilgi.b}</h4>
</div>
</body>
</html>