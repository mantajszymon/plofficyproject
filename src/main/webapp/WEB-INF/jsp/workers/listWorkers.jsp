<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lista studentów</title>
</head>
<body>
	<table>
		<tr>
			<th>Imię i nazwisko</th>
			<th>Rodzaj pracy</th>
			<th>Identyfikator</th>
		<tr>
			<c:forEach items="${listaPracownikow}" var="pracownik">
				<tr>
					<td><a href="/podgladPracownika/${pracownik.id}">${pracownik.userDetails.imie}
							${pracownik.userDetails.nazwisko}</a></td>
					<td>${pracownik.userDetails.typ}</td>
					<td>${pracownik.userTypeDetails.identyfikator}</td>
				</tr>
			</c:forEach>
	</table>
	<form action="/" method="POST">
		<button type="submit">Powrót</button>
	</form>
</body>
</html>