<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="styles/styles.css" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Strona główna</title>
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head">
			<p>Strona główna</p>
		</div>
		</header>
		<center>
			<table>
				<tr>
					<td>
						<form action="/users" method="POST">
							<button type="submit">Użytkownicy</button>
						</form>
					</td>
					<td>
						<form action="/workers" method="POST">
							<button type="submit">Pracownicy</button>
						</form>
					</td>
					<td>
						<form action="/students" method="POST">
							<button type="submit">Studenci</button>
						</form>
					</td>
				</tr>
			</table>
		</center>
	</div>
</body>
</html>