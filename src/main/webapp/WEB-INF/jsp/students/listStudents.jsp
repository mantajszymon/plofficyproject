<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lista studentów</title>
</head>
<body>
	<form:form action="/filtrujStudentow" modelAttribute="filtr">
		<table>
			<tr>
				<th>Imię</th>
				<th>Nazwisko</th>
				<th>Numer indeksu</th>
				<th>Wydział</th>
				<th>Kierunek</th>
				<th>PESEL</th>
			</tr>
			<tr>
				<td><form:input path="imie" value=""/></td>
				<td><form:input path="nazwisko" value=""/></td>
				<td><form:input path="nrIndeksu" value=""/></td>
				<td><form:select path="wydzial">
				<form:option value="">Wybierz wydział...</form:option>
				<form:option value="EEIA">WEEIA</form:option>
				<form:option value="FTIMS">WFTIMS</form:option>
				<form:option value="BINOZ">WBINOZ</form:option> 
				</form:select></td>
				<td><form:input path="kierunek" value=""/></td>
				<td><form:input path="PESEL" value=""/></td>
			</tr>
		</table>
		<button type="submit">Filtruj</button>
	</form:form>
	<table>
		<tr>
			<th>Imię i nazwisko</th>
			<th>Wydział</th>
			<th>Nr indeksu</th>
		<tr>
			<c:forEach items="${listaStudentow}" var="student">
				<tr>
					<td><a href="/podgladStudenta/${student.id}">${student.userDetails.imie}
							${student.userDetails.nazwisko}</a></td>
					<td>${student.userTypeDetails.wydzial}</td>
					<td>${student.userTypeDetails.nrIndeksu}</td>
				</tr>
			</c:forEach>
	</table>
	<form action="/" method="POST">
		<button type="submit">Powrót</button>
	</form>
</body>
</html>