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
<title>Brak dostępu</title>
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head"><p>Błąd autoryzacji</p></div>
		</br></br>
		</header>
		<center>
		<b>Nie posiadasz uprawnień do przeglądania tej strony.</b>
		<form:form action="/homepage">
			<button type="submit">STRONA GŁÓWNA</button>
		</form:form>
		</center>
	</div>
</body>
</html>