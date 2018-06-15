<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/styles/styles.css" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Pracownicy</title>
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head">
			<p>Lista pracownikow</p>
		</div>
		</header>
		<center>
			<form:form action="/workers/filtrujPracownikow" modelAttribute="filtr">
				<table>
					<tr>
						<th>Imię</th>
						<th>Nazwisko</th>
						<th>Identyfikator</th>
					</tr>
					<tr>
						<td><form:input path="imie" value="" /></td>
						<td><form:input path="nazwisko" value="" /></td>
						<td><form:input path="identyfikator" value="" /></td>
					</tr>
				</table>
				<button type="submit">Filtruj</button>
			</form:form>
			<table border="1">
				<tr>
					<th>Imię i nazwisko</th>
					<th>Rodzaj pracy</th>
					<th>Identyfikator</th>
				<tr>
					<c:forEach items="${listaPracownikow}" var="pracownik">
						<tr>
							<td><a href="/workers/podgladPracownika/${pracownik.id}">${pracownik.userDetails.imie}
									${pracownik.userDetails.nazwisko}</a></td>
							<td>${pracownik.userDetails.typ}</td>
							<td>${pracownik.userTypeDetails.identyfikator}</td>
						</tr>
					</c:forEach>
			</table>
			<form action="/homepage" method="POST">
				<button type="submit">Powrót</button>
			</form>
		</center>
	</div>
</body>
</html>