<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dodawanie uzytkownika</title>
</head>
<body>
	<form action="/users" method="POST">
		<button type="submit">Listuj użytkowników</button>
	</form>
	<form action="/workers" method="POST">
		<button type="submit">Pracownicy</button>
	</form>
	<form action="/students" method="POST">
		<button type="submit">Studenci</button>
	</form>
	<form action="/users" method="POST">
		<button type="submit"></button>
	</form>
</body>
</html>