<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="styles/styles.css" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Dodawanie uzytkownika</title>
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head">
		<p>Dodawanie uzytkownika</p></div>
		</header>
		<form:form action="#" modelAttribute="student">
			<table>
				<tr>
					<td>Imię:</td>
					<td>${student.userDetails.imie}</td>
				</tr>
				<tr>
					<td>Nazwisko:</td>
					<td>${student.userDetails.nazwisko}</td>
				</tr>
				<tr>
					<td>Płeć:</td>
					<td>${student.userDetails.plec}</td>
				</tr>
				<tr>
					<td>Typ użytkownika:</td>
					<td>${student.userDetails.typ}</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>${student.email}</td>
				</tr>
				<tr>
					<td>DANE UŻYTKOWNIKA:<br></td>
				</tr>
				<tr>
					<td>PESEL:</td>
					<td>${student.userDetails.PESEL}</td>
				</tr>
				<tr>
					<td>Numer telefonu(prywatny):</td>
					<td>${student.userDetails.nrTelefonuPrywatny}</td>
				</tr>
				<tr>
					<td>Adres:<br></td>
				</tr>
				<tr>
					<td>Kraj:</td>
					<td>${student.address.kraj}</td>
				</tr>
				<tr>
					<td>Kod pocztowy:</td>
					<td>${student.address.kodPocztowy}</td>
				</tr>
				<tr>
					<td>Miasto:</td>
					<td>${student.address.miasto}</td>
				</tr>
				<tr>
					<td>Ulica:</td>
					<td>${student.address.ulica}</td>
				</tr>
				<tr>
					<td>Numer ulicy:</td>
					<td>${student.address.nrUlicy}</td>
				</tr>
				<tr>
					<td>Numer domu:</td>
					<td>${student.address.nrDomu}</td>
				</tr>
				<tr>
					<td>Dane studenta:<br></td>
				</tr>
				<tr>
					<td>Numer indeksu:</td>
					<td>${student.userTypeDetails.nrIndeksu}</td>
				</tr>
				<tr>
					<td>Wydział:</td>
					<td>${student.userTypeDetails.wydzial}</td>
				</tr>
				<tr>
					<td>Tryb studiów:</td>
					<td>${student.userTypeDetails.trybStudiow}</td>
				</tr>
				<tr>
					<td>Kierunek studiów:</td>
					<td>${student.userTypeDetails.kierunek}</td>
				</tr>
				<tr>
					<td>Stopień studiów:</td>
					<td>${student.userTypeDetails.stopienStudiow}</td>
				</tr>
				<tr>
					<td>Rok:</td>
					<td>${student.userTypeDetails.rok}</td>
				</tr>
				<tr>
					<td>Semestr:</td>
					<td>${student.userTypeDetails.semestr}</td>
				</tr>
			</table>
		</form:form>
		<form:form action="/" method="POST">
			<input type="submit" value="POWRÓT" />
		</form:form>
	</div>
</body>
</html>