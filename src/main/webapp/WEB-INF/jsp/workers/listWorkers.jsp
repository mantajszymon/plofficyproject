<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lista pracowników</title>
</head>
<body>
	<form:form action="/filtrujPracownikow" modelAttribute="filtr">
		<table>
			<tr>
				<th>Imię</th>
				<th>Nazwisko</th>
				<th>Identyfikator</th>
			</tr>
			<tr>
				<td><form:input path="imie" value=""/></td>
				<td><form:input path="nazwisko" value=""/></td>
				<td><form:input path="identyfikator" value=""/></td>
			</tr>
		</table>
		<button type="submit">Filtruj</button>
	</form:form>
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