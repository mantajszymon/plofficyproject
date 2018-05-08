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