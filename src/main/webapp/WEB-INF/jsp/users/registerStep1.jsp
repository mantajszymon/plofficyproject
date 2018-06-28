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
<title>Dodawanie uzytkownika</title>
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head">
			<p>Dodawanie uzytkownika</p>
		</div>
		</header>
		<c:if test="${not empty errorResult}">
		<p>${errorResult}</p>
		</c:if>
		<form:form action="/register/registerStep1" method="POST" modelAttribute="user">
			<table>
				<tr>
					<td><form:label path="username">Username:</form:label></td>
					<td><form:input path="username" /></td>
				</tr>
				<tr>
					<td><form:label path="email">Email:</form:label></td>
					<td><form:input path="email" />
				</tr>
				<tr>
					<td><form:label path="password">Password:</form:label></td>
					<td><form:input type="password" path="password" />
				</tr>
				<tr>

					<td>Wybierz role:</td>
					<td><form:select path="role">
							<form:option value="USER">USER</form:option>
							<form:option value="ADMIN">ADMIN</form:option>
						</form:select></td>
				<tr>
					<td>DANE UŻYTKOWNIKA:<br></td>
				</tr>
				<tr>
					<td><form:label path="userDetails.imie">Imie:</form:label></td>
					<td><form:input path="userDetails.imie" /></td>
				</tr>
				<tr>
					<td><form:label path="userDetails.nazwisko">Nazwisko:</form:label></td>
					<td><form:input path="userDetails.nazwisko" /></td>
				</tr>
				<tr>
					<td><form:label path="userDetails.PESEL">PESEL:</form:label></td>
					<td><form:input path="userDetails.PESEL" /></td>
				</tr>
				<tr>
					<td><form:label path="userDetails.nrTelefonuPrywatny">Numer telefonu(prywatny):</form:label></td>
					<td><form:input path="userDetails.nrTelefonuPrywatny" /></td>
				</tr>
				<tr>
					<td><form:label path="userDetails.nrTelefonuSluzbowy">Numer telefonu(służbowy):</form:label></td>
					<td><form:input path="userDetails.nrTelefonuSluzbowy" /></td>
				</tr>
				<tr>
					<td>Wybierz płeć:</td>
					<td><form:select path="userDetails.plec">
							<form:option value="M">mężczyzna</form:option>
							<form:option value="K">kobieta</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td>Typ użytkownika:</td>
					<td><form:select path="userDetails.typ">
							<form:option value="student">student</form:option>
							<form:option value="nauczyciel">wykladowca/prowadzący</form:option>
							<form:option value="sekretariat">pracownik biurowy</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td>Adres:<br></td>
				</tr>
				<tr>
					<td><form:label path="address.kraj">Kraj:</form:label></td>
					<td><form:input path="address.kraj" /></td>
				</tr>
				<tr>
					<td><form:label path="address.kodPocztowy">Kod pocztowy:</form:label></td>
					<td><form:input path="address.kodPocztowy" /></td>
				</tr>
				<tr>
					<td><form:label path="address.miasto">Miasto: </form:label></td>
					<td><form:input path="address.miasto" /></td>
				</tr>
				<tr>
					<td><form:label path="address.ulica">Ulica:</form:label></td>
					<td><form:input path="address.ulica" /></td>
				</tr>
				<tr>
					<td><form:label path="address.nrUlicy">Numer ulicy:</form:label></td>
					<td><form:input path="address.nrUlicy" /></td>
				</tr>
				<tr>
					<td><form:label path="address.nrDomu">Numer domu:</form:label></td>
					<td><form:input path="address.nrDomu" /></td>
				</tr>
			</table>
			<center>
				<button type="submit">DALEJ</button>
			</center>
		</form:form>
	</div>
</body>
</html>