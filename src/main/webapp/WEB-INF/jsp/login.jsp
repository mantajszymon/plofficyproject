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
<title>Logowanie</title>
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head"><p>Login</p></div>
		</header>
		<form name="#" action="/login" method="POST">
			<table border="1">
				<thead>
					<tr>
						<th colspan="2">&nbsp;</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Użytkownik:</td>
						<td><input type="text" name="username" value="" /></td>
					</tr>
					<tr>
						<td>Hasło:</td>
						<td><input type="password" name="password" /></td>
					</tr>
				</tbody>
			</table>
			<p>
				<button type="submit">ZALOGUJ</button>
			</p>
			<br>
			<c:if test="${not empty param.error}">
				<p style="font-size: 20; color: #FF1C19;">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
			</c:if>
		</form>
	</div>
</body>
</html>