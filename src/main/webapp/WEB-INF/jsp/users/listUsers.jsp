<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dodawanie uzytkownika</title>
</head>
<body>
<table>
		<tr>
			<th>USERNAME</th>
			<th>EMAIL</th>
			<th>STATUS</th>
			<th>EDYCJA</th>
		<tr>
		<c:forEach items="${listOfAllUsers}" var="user">
				<tr>
					<td>${user.username}</td>
					<td>${user.email}</td>
					<td><c:if test="${user.status == 1}">
							<form action="/changeStatus" method="POST">
							<input type="hidden" name="id" id="id" value="${user.id}"/>
							<button type="submit">DEAKTYWUJ</button>
							</form>
						</c:if> <c:if test="${user.status == 0}">
							<form action="/changeStatus" method="POST">
							<input type="hidden" name="id" id="id" value="${user.id}"/>
							<button type="submit">AKTYWUJ</button>
							</form>
						</c:if>
					</td>
					<td>
						<form action="/editUser" method="GET">
							<button type="submit">E</button>
							<input type="hidden" value="${user.id}" name="id"/>
						</form>
					</td>
				</tr>
			</c:forEach>
		
		
	</table>

	<form action="/register" method="GET">
		<button type="submit">DODAJ UZYTKOWNIKA</button>
	</form>
</body>
</html>