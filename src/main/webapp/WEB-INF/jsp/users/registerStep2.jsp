<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="styles/styles.css" rel="stylesheet" type="text/css"/>
<script src="jquery-1.6.1.js"></script>
<script src="scripts/scripts.js"></script>
<head>
<title>Dodawanie uzytkownika</title>
</head>
<body>
	<c:if test="${exists}">
		UZYTKOWNIK ISTNIEJE W BZIE
	</c:if>
	<c:if test="${isValidEmail eq false}">
		Podaj prawidłowy email
		</c:if>
		
		
	<form:form action="/registerStep2" method="POST" modelAttribute="user">
		<form:hidden path="username"/>
		<form:hidden path="email"/>
		<form:hidden path="role"/>
		<form:hidden path="userDetails.imie"/>
		<form:hidden path="userDetails.nazwisko"/>
		<form:hidden path="userDetails.PESEL"/>
		<form:hidden path="userDetails.nrTelefonuPrywatny"/>
		<form:hidden path="userDetails.nrTelefonuSluzbowy"/>
		<form:hidden path="userDetails.plec"/>
		<form:hidden path="address.kraj"/>
		<form:hidden path="address.kodPocztowy"/>
		<form:hidden path="address.miasto"/>
		<form:hidden path="address.ulica"/>
		<form:hidden path="address.nrDomu"/>
		<form:hidden path="address.nrUlicy"/>
		
		
		<table>
			<c:if test="${typ == 'nauczyciel'}">
				<tr>
					<td><form:label path="userTypeDetails.identyfikator">Identyfikator: </form:label></td>
					<td><form:input path="userTypeDetails.identyfikator" /></td>
				</tr>
				<tr>
				<td><form:label path="userTypeDetails.tytul">Tytuł naukowy</form:label></td>
				<td><form:input path="userTypeDetails.tytul" value=""/></td>
				</tr>
			</c:if>
			<c:if test="${typ == 'sekretariat'}">
				<tr>
					<td><form:label path="userTypeDetails.identyfikator">Identyfikator: </form:label></td>
					<td><form:input path="userTypeDetails.identyfikator" /></td>
				</tr>
			</c:if>
			<form:hidden path="userDetails.typ"/>
			<c:if test="${typ == 'student' }">
				<tr>
				<td>Wybierz wydzial:</td>
				<td><form:select path="userTypeDetails.wydzial">
				<form:option value="EEIA">WEEIA</form:option>
				<form:option value="FTIMS">WFTIMS</form:option>
				<form:option value="BINOZ">WBINOZ</form:option> 
				</form:select></td>
				</tr>
					<tr>
				<td><form:label path="userTypeDetails.kierunek"></form:label></td>
				<td><form:input path="userTypeDetails.kierunek" value=""/></td>
				</tr>
					<tr>
				<td>Wybierz tryb studiów:</td>
				<td><form:select path="userTypeDetails.trybStudiow">
							<form:option value="DZIENNE">Studia stacjonarne</form:option>
							<form:option value="ZAOCZNE">Studia niestacjonarne</form:option>
							<form:option value="DZIENNE_IND">Studia stacjonarne - indywidualny tok</form:option>
							<form:option value="ZAOCZNE_IND">Studia niestacjonarne - indywidualny tok</form:option>
						</form:select></td>
				</tr>
				<tr>
				<td>Wybierz stopień studiów:</td>
				<td><form:select path="userTypeDetails.stopienStudiow">
				<form:option value="I">Pierwszy</form:option>
				<form:option value="II">Drugi</form:option>
				</form:select>
				</td>
					<tr>
				<td>Wybierz rok studiów:</td>
				<td><form:select path="userTypeDetails.rok">
							<form:option value="1">1</form:option>
							<form:option value="2">2</form:option>
							<form:option value="3">3</form:option>
						</form:select></td>
				</tr>
					<tr>
					<td>Wybierz semestr:</td>
					<td><form:select path="userTypeDetails.semestr">
							<form:option value="1">1</form:option>
							<form:option value="2">2</form:option>
							<form:option value="3">3</form:option>
							<form:option value="4">4</form:option>
							<form:option value="5">5</form:option>
							<form:option value="6">6</form:option>
							<form:option value="7">7</form:option>
							<form:option value="8">8</form:option>
						</form:select></td>
				</tr>
			</c:if>
			<tr>
				<td><input type="submit" value="Dodaj uzytkownika" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>