<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dodawanie uzytkownika</title>
</head>
<body>
	<c:if test="${exists}">
		UZYTKOWNIK ISTNIEJE W BZIE
	</c:if>
	<form action="/register" method="POST">
		Username:<input type="text" name="username" id="name"> <br>
		Email:<input type="text" name="email" id="email"> 
		<c:if test ="${isValidEmail eq false}">
		Podaj prawidłowy email
		</c:if><br>
		Password:<input type="password" name="password" name="password"><br> 
		<input type="radio" name="role" value="ADMIN">ADMIN<br> 
		<input type="radio" checked="checked" name="role" value="USER">USER<br> 
		<!-- <input type="checkbox" name="id" value="PHP"> PHP<BR> -->
		<button type="submit">SUBMIT</button>
	</form>
</body>
</html>