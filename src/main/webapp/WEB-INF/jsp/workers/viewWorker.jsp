<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="styles/styles.css" rel="stylesheet" type="text/css" />
<script src="scripts/scripts.js"></script>
<head>
</head>
<body>
<form:form action="#" modelAttribute="pracownik">
	<table>
		<tr>
			<td>Imię:</td>
			<td>${pracownik.userDetails.imie}</td>
		</tr>
		<tr>
			<td>Nazwisko:</td>
			<td>${pracownik.userDetails.nazwisko}</td>
		</tr>
		<tr>
			<td>Płeć:</td>
			<td>${pracownik.userDetails.plec}</td>
		</tr>
		<tr>
			<td>Typ użytkownika:</td>
			<td>${pracownik.userDetails.typ}</td>
		</tr>
		<tr>
			<td>Email:</td>
			<td>${pracownik.email}</td>
		</tr>
		<tr>
			<td>DANE UŻYTKOWNIKA:<br></td>
		</tr>
		<tr>
		<tr>
			<td>PESEL:</td>
			<td>${pracownik.userDetails.PESEL}</td>
		</tr>
		<tr>
			<td>Numer telefonu(prywatny):</td>
			<td>${pracownik.userDetails.nrTelefonuPrywatny}</td>
		</tr>
		<tr>
			<td>Numer telefonu(służbowy):</td>
			<td>${pracownik.userDetails.nrTelefonuSluzbowy}</td>
		</tr>
		<tr>
			<td>Adres:<br></td>
		</tr>
		<tr>
			<td>Kraj:</td>
			<td>${pracownik.address.kraj}</td>
		</tr>
		<tr>
			<td>Kod pocztowy:</td>
			<td>${pracownik.address.kodPocztowy}</td>
		</tr>
		<tr>
			<td>Miasto:</td>
			<td>${pracownik.address.miasto}</td>
		</tr>
		<tr>
			<td>Ulica:</td>
			<td>${pracownik.address.ulica}</td>
		</tr>
		<tr>
			<td>Numer ulicy:</td>
			<td>${pracownik.address.nrUlicy}</td>
		</tr>
		<tr>
			<td>Numer domu:</td>
			<td>${pracownik.address.nrDomu}</td>
		</tr>
		<tr>
			<td>Dane pracownika:<br></td>
		</tr>
		<tr>
			<td>Identyfikator pracownika:</td>
			<td>${pracownik.userTypeDetails.identyfikator}</td>
		</tr>
	</table>
	</form:form>
	<form:form action="/" method="POST">
		<input type="submit" value="POWRÓT" />
	</form:form>
</body>
</html>