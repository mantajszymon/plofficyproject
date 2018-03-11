<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dodawanie uzytkownika</title>
</head>
<body>
		<c:if test="${param.success}">
		Hasło zostało zmienione<br>
		</c:if>
		<c:if test="${param.success eq false}">
		Cos poszlo nie tak..
		</c:if>
		Zmiana hasła/maila dla użytkownika ${username}:<br>
	<form action="/editUser" method="POST">
		Email:<input type="text" name="email" id="email" value="${email}"> <br>
		Password:<input type="password" name="password"><br> 
		<input type="hidden" value="${id}" name ="id" id="id"/>
		<button type="submit">SUBMIT</button>
	</form>
	<form action ="/" method="POST">
	<button type="submit">POWROT</button>
	</form>
</body>
</html>