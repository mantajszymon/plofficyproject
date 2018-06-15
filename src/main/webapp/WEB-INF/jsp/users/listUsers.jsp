<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/styles/styles.css" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Lista uzytkownikow</title>
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head">
			<p>Lista uzytkownikow</p>
		</div>
		</header>
		<center>
			<table>
				<tr>
					<th>USERNAME</th>
					<th>EMAIL</th>
					<th>STATUS</th>
					<th>EDYCJA</th>
					<th>USUŃ</th>
				<tr>
					<c:forEach items="${listOfAllUsers}" var="user">
						<tr>
							<td><a href="/users/podgladUzytkownika/${user.id}">${user.username}</a></td>
							<td>${user.email}</td>
							<td><c:if test="${user.status == 1}">
									<form action="/users/changeStatus" method="POST">
										<input type="hidden" name="id" id="id" value="${user.id}" />
										<button type="submit">DEAKTYWUJ</button>
									</form>
								</c:if> <c:if test="${user.status == 0}">
									<form action="/users/changeStatus" method="POST">
										<input type="hidden" name="id" id="id" value="${user.id}" />
										<button type="submit">AKTYWUJ</button>
									</form>
								</c:if></td>
							<td>
								<form action="/admin/editUser" method="GET">
									<button type="submit">E</button>
									<input type="hidden" value="${user.id}" name="id" />
								</form>
							</td>
							<td>
								<form action="/admin/usunUzytkownika/${user.id}" method="POST">
									<button type="submit">X</button>
									<input type="hidden" value="${user.id}" name="id" />
								</form>
							</td>
						</tr>
					</c:forEach>
			</table>
		</center>
		<form action="/register" method="GET">
			<button type="submit">DODAJ UZYTKOWNIKA</button>
		</form>
		<form action="/homepage" method="GET">
			<button type="submit">POWRÓT</button>
		</form>
	</div>
</body>
</html>