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
<link type="text/css" rel="stylesheet" href="/styles/styles.css" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Edycja uzytkownika</title>
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head"><p>Edycja użytkownika</p></div>
		</header>
	<c:if test="${exists}">
		UZYTKOWNIK ISTNIEJE W BZIE
	</c:if>
	<c:if test="${isValidEmail eq false}">
		Podaj prawidłowy email
		</c:if>
	<form:form action="/admin/editUser" method="POST" modelAttribute="user">
		<form:hidden path="userDetails.id" />
		<form:hidden path="userTypeDetails.id" />
		<form:hidden path="address.id" />
		<form:hidden path="username" />
		<form:hidden path="role" />
		<form:hidden path="userDetails.plec" />
		<form:hidden path="userDetails.typ" />
		<form:hidden path="userDetails.imie" />
		<form:hidden path="userDetails.PESEL" />
		<form:hidden path="userTypeDetails.identyfikator" />
		<form:hidden path="userTypeDetails.nrIndeksu" />
		<form:hidden path="userTypeDetails.trybStudiow" />
		<form:hidden path="userTypeDetails.kierunek" />
		<form:hidden path="userTypeDetails.rok" />
		<form:hidden path="userTypeDetails.stopienStudiow" />
		<form:hidden path="userTypeDetails.semestr" />
		<table>
			<tr>
				<td>Username:</td>
				<td>${user.username}</td>
			</tr>
			<tr>
				<td>Rola:</td>
				<td>${user.role}</td>
			</tr>
			<tr>
				<td>Płeć:</td>
				<td>${user.userDetails.plec}</td>
			</tr>
			<tr>
				<td>Typ użytkownika:</td>
				<td>${user.userDetails.typ}</td>
			</tr>

			<tr>
				<td><form:label path="email">Email:</form:label></td>
				<td><form:input path="email" value="${email}"></form:input>
			</tr>
			<tr>
				<td><form:label path="password">Password:</form:label></td>
				<td><form:input type="password" path="${password}" />
			</tr>
			<tr>
			<tr>
				<td>DANE UŻYTKOWNIKA:<br></td>
			</tr>
			<tr>
				<td>Imie:</td>
				<td>${user.userDetails.imie}</td>
			</tr>
			<tr>
				<td><form:label path="userDetails.nazwisko">Nazwisko:</form:label></td>
				<td><form:input path="userDetails.nazwisko"
						value="${userDetails.nazwisko}" /></td>
			</tr>
			<tr>
				<td>PESEL:</td>
				<td>${user.userDetails.PESEL}</td>
			</tr>
			<tr>
				<td><form:label path="userDetails.nrTelefonuPrywatny">Numer telefonu(prywatny):</form:label></td>
				<td><form:input path="userDetails.nrTelefonuPrywatny"
						value="${userDetails.nrTelefonuPrywatny}" /></td>
			</tr>
			<tr>
				<td><form:label path="userDetails.nrTelefonuSluzbowy">Numer telefonu(służbowy):</form:label></td>
				<td><form:input path="userDetails.nrTelefonuSluzbowy"
						value="${userDetails.nrTelefonuSluzbowy}" /></td>
			</tr>
			<tr>
				<td>Adres:<br></td>
			</tr>
			<tr>
				<td><form:label path="address.kraj">Kraj:</form:label></td>
				<td><form:input path="address.kraj" value="${address.kraj}" /></td>
			</tr>
			<tr>
				<td><form:label path="address.kodPocztowy">Kod pocztowy:</form:label></td>
				<td><form:input path="address.kodPocztowy"
						value="${address.kodPocztowy}" /></td>
			</tr>
			<tr>
				<td><form:label path="address.miasto">Miasto: </form:label></td>
				<td><form:input path="address.miasto" value="${address.miasto}" /></td>
			</tr>
			<tr>
				<td><form:label path="address.ulica">Ulica:</form:label></td>
				<td><form:input path="address.ulica" value="${address.ulica}" /></td>
			</tr>
			<tr>
				<td><form:label path="address.nrUlicy">Numer ulicy:</form:label></td>
				<td><form:input path="address.nrUlicy"
						value="${address.nrUlicy}" /></td>
			</tr>
			<tr>
				<td><form:label path="address.nrDomu">Numer domu:</form:label></td>
				<td><form:input path="address.nrDomu" value="${address.nrDomu}" /></td>
			</tr>
			<tr>
				<td>Dane szczegółowe:</td>
				<td></td>

			</tr>
			<c:if
				test="${user.userDetails.typ == 'nauczyciel' || user.userDetails.typ == 'pracownik' }">
				<tr>
					<td>Numer identyfikacyjny:</td>
					<td>${user.userTypeDetails.identyfikator}</td>
				</tr>
				<tr>
					<td><form:label path="userTypeDetails.tytul">Tytuł:</form:label></td>
					<td><form:input path="userTypeDetails.tytul"
							value="${userTypeDetails.tytul}" /></td>
				</tr>
			</c:if>
			<c:if test="${user.userDetails.typ == 'student' }">
				<tr>
					<td>Numer indeksu:</td>
					<td>${user.userTypeDetails.nrIndeksu}</td>
				</tr>
				<tr>
					<td>Wydział:</td>
					<td>${user.userTypeDetails.wydzial}</td>
				</tr>
				<tr>
					<td>Tryb studiów:</td>
					<td>${user.userTypeDetails.trybStudiow}</td>
				</tr>
				<tr>
					<td>Kierunek studiów:</td>
					<td>${user.userTypeDetails.kierunek}</td>
				</tr>
				<tr>
					<td>Stopień studiów:</td>
					<td>${user.userTypeDetails.stopienStudiow}</td>
				</tr>
				<tr>
					<td>Rok:</td>
					<td>${user.userTypeDetails.rok}</td>
				</tr>
				<tr>
					<td>Semestr:</td>
					<td>${user.userTypeDetails.semestr}</td>
				</tr>
			</c:if>
			<tr>
				<td><input type="submit" value="Edytuj" /></td>
			</tr>
		</table>
	</form:form>
	<form action="/homepage" method="POST">
		<button type="submit">Powrót</button>
	</form>
	</div>
</body>
</html>