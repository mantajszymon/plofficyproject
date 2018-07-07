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
			<p>Podglad pracownika</p>
		</div>
		</header>
		<form:form action="#" modelAttribute="pracownik">
			<table>
				<tr>
					<td>Imię:</td>
					<td>${pracownik.userDetails.imie}</td>
				</tr>
				<tr>
					<td>Nazwisko:</td>
					<td>${pracownik.userDetails.nazwisko}</td>
				</tr>
				<tr>
					<td>Płeć:</td>
					<td>${pracownik.userDetails.plec}</td>
				</tr>
				<tr>
					<td>Typ użytkownika:</td>
					<td>${pracownik.userDetails.typ}</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>${pracownik.email}</td>
				</tr>
				<tr>
					<td>DANE UŻYTKOWNIKA:<br></td>
				</tr>
				<tr>
				<tr>
					<td>PESEL:</td>
					<td>${pracownik.userDetails.PESEL}</td>
				</tr>
				<tr>
					<td>Numer telefonu(prywatny):</td>
					<td>${pracownik.userDetails.nrTelefonuPrywatny}</td>
				</tr>
				<tr>
					<td>Numer telefonu(służbowy):</td>
					<td>${pracownik.userDetails.nrTelefonuSluzbowy}</td>
				</tr>
				<tr>
					<td>Adres:<br></td>
				</tr>
				<tr>
					<td>Kraj:</td>
					<td>${pracownik.address.kraj}</td>
				</tr>
				<tr>
					<td>Kod pocztowy:</td>
					<td>${pracownik.address.kodPocztowy}</td>
				</tr>
				<tr>
					<td>Miasto:</td>
					<td>${pracownik.address.miasto}</td>
				</tr>
				<tr>
					<td>Ulica:</td>
					<td>${pracownik.address.ulica}</td>
				</tr>
				<tr>
					<td>Numer ulicy:</td>
					<td>${pracownik.address.nrUlicy}</td>
				</tr>
				<tr>
					<td>Numer domu:</td>
					<td>${pracownik.address.nrDomu}</td>
				</tr>
				<tr>
					<td>Dane pracownika:<br></td>
				</tr>
				<tr>
					<td>Identyfikator pracownika:</td>
					<td>${pracownik.userTypeDetails.identyfikator}</td>
				</tr>
			</table>
		</form:form>
		<center>

			<table border="1">
				<tr>
					<th><br></th>
					<th>Poniedziałek</th>
					<th>Wtorek</th>
					<th>Środa</th>
					<th>Czwartek</th>
					<th>Piątek</th>
					<th>Sobota</th>
					<th>Niedziela</th>
				</tr>
				<tr>
					<td>8:15-9:00</td>
					<td>${poniedzialek[0].przedmiot}<br>
						${poniedzialek[0].godziny}<br> ${poniedzialek[0].miejsce}
					</td>
					<td>${wtorek[0].przedmiot}<br> ${wtorek[0].godziny}<br>
						${wtorek[0].miejsce}
					</td>
					<td>${sroda[0].przedmiot}<br> ${sroda[0].godziny}<br>
						${sroda[0].miejsce}
					</td>
					<td>${czwartek[0].przedmiot}<br> ${czwartek[0].godziny}<br>
						${czwartek[0].miejsce}
					</td>
					<td>${piatek[0].przedmiot}<br> ${piatek[0].godziny}<br>
						${piatek[0].miejsce}
					</td>
					<td>${sobota[0].przedmiot}<br> ${sobota[0].godziny}<br>
						${sobota[0].miejsce}
					</td>
					<td>${niedziela[0].przedmiot}<br>
						${niedziela[0].godziny}<br> ${niedziela[0].miejsce}
					</td>
				</tr>
				<tr>
					<td>9:15-10:00</td>
					<td>${poniedzialek[1].przedmiot}<br>
						${poniedzialek[1].godziny}<br> ${poniedzialek[1].miejsce}</td>
					<td>${wtorek[1].przedmiot}<br>
						${wtorek[1].godziny}<br> ${wtorek[1].miejsce}</td>
					<td>${sroda[1].przedmiot}<br>
						${sroda[1].godziny}<br> ${sroda[1].miejsce}</td>
					<td>${czwartek[1].przedmiot}<br>
						${czwartek[1].godziny}<br> ${czwartek[1].miejsce}</td>
					<td>${piatek[1].przedmiot}<br>
						${piatek[1].godziny}<br> ${piatek[1].miejsce}</td>
					<td>${sobota[1].przedmiot}<br>
						${sobota[1].godziny}<br> ${sobota[1].miejsce}</td>
					<td>${niedziela[1].przedmiot}<br>
						${niedziela[1].godziny}<br> ${niedziela[1].miejsce}</td>
				</tr>
				<tr>
					<td>10:15-11:00</td>
					<td>${poniedzialek[2].przedmiot}<br>
						${poniedzialek[2].godziny}<br> ${poniedzialek[2].miejsce}</td>
					<td>${wtorek[2].przedmiot}<br>
						${wtorek[2].godziny}<br> ${wtorek[2].miejsce}</td>
					<td>${sroda[2].przedmiot}<br>
						${sroda[2].godziny}<br> ${sroda[2].miejsce}</td>
					<td>${czwartek[2].przedmiot}<br>
						${czwartek[2].godziny}<br> ${czwartek[2].miejsce}</td>
					<td>${piatek[2].przedmiot}<br>
						${piatek[2].godziny}<br> ${piatek[2].miejsce}</td>
					<td>${sobota[2].przedmiot}<br>
						${sobota[2].godziny}<br> ${sobota[2].miejsce}</td>
					<td>${niedziela[2].przedmiot}<br>
						${niedziela[2].godziny}<br> ${niedziela[2].miejsce}</td>
				</tr>
				<tr>
					<td>11:15-12:00</td>
					<td>${poniedzialek[3].przedmiot}<br>
						${poniedzialek[3].godziny}<br> ${poniedzialek[3].miejsce}</td>
					<td>${wtorek[3].przedmiot}<br>
						${wtorek[3].godziny}<br> ${wtorek[3].miejsce}</td>
					<td>${sroda[3].przedmiot}<br>
						${sroda[3].godziny}<br> ${sroda[3].miejsce}</td>
					<td>${czwartek[3].przedmiot}<br>
						${czwartek[3].godziny}<br> ${czwartek[3].miejsce}</td>
					<td>${piatek[3].przedmiot}<br>
						${piatek[3].godziny}<br> ${piatek[3].miejsce}</td>
					<td>${sobota[3].przedmiot}<br>
						${sobota[3].godziny}<br> ${sobota[3].miejsce}</td>
					<td>${niedziela[3].przedmiot}<br>
						${niedziela[3].godziny}<br> ${niedziela[3].miejsce}</td>
				</tr>
				<tr>
					<td>12:15-13:00</td>
					<td>${poniedzialek[4].przedmiot}<br>
						${poniedzialek[4].godziny}<br> ${poniedzialek[4].miejsce}</td>
					<td>${wtorek[4].przedmiot}<br>
						${wtorek[4].godziny}<br> ${wtorek[4].miejsce}</td>
					<td>${sroda[4].przedmiot}<br>
						${sroda[4].godziny}<br> ${sroda[4].miejsce}</td>
					<td>${czwartek[4].przedmiot}<br>
						${czwartek[4].godziny}<br> ${czwartek[4].miejsce}</td>
					<td>${piatek[4].przedmiot}<br>
						${piatek[4].godziny}<br> ${piatek[4].miejsce}</td>
					<td>${sobota[4].przedmiot}<br>
						${sobota[4].godziny}<br> ${sobota[4].miejsce}</td>
					<td>${niedziela[4].przedmiot}<br>
						${niedziela[4].godziny}<br> ${niedziela[4].miejsce}</td>
				</tr>
				<tr>
					<td>13:15-14:00</td>
					<td>${poniedzialek[5].przedmiot}<br>
						${poniedzialek[5].godziny}<br> ${poniedzialek[5].miejsce}</td>
					<td>${wtorek[5].przedmiot}<br>
						${wtorek[5].godziny}<br> ${wtorek[5].miejsce}</td>
					<td>${sroda[5].przedmiot}<br>
						${sroda[5].godziny}<br> ${sroda[5].miejsce}</td>
					<td>${czwartek[5].przedmiot}<br>
						${czwartek[5].godziny}<br> ${czwartek[5].miejsce}</td>
					<td>${piatek[5].przedmiot}<br>
						${piatek[5].godziny}<br> ${piatek[5].miejsce}</td>
					<td>${sobota[5].przedmiot}<br>
						${sobota[5].godziny}<br> ${sobota[5].miejsce}</td>
					<td>${niedziela[5].przedmiot}<br>
						${niedziela[5].godziny}<br> ${niedziela[5].miejsce}</td>
				</tr>
				<tr>
					<td>14:15-15:00</td>
					<td>${poniedzialek[6].przedmiot}<br>
						${poniedzialek[6].godziny}<br> ${poniedzialek[6].miejsce}</td>
					<td>${wtorek[6].przedmiot}<br>
						${wtorek[6].godziny}<br> ${wtorek[6].miejsce}</td>
					<td>${sroda[6].przedmiot}<br>
						${sroda[6].godziny}<br> ${sroda[6].miejsce}</td>
					<td>${czwartek[6].przedmiot}<br>
						${czwartek[6].godziny}<br> ${czwartek[6].miejsce}</td>
					<td>${piatek[6].przedmiot}<br>
						${piatek[6].godziny}<br> ${piatek[6].miejsce}</td>
					<td>${sobota[6].przedmiot}<br>
						${sobota[6].godziny}<br> ${sobota[6].miejsce}</td>
					<td>${niedziela[6].przedmiot}<br>
						${niedziela[6].godziny}<br> ${niedziela[6].miejsce}</td>
				</tr>
				<tr>
					<td>15:15-16:00</td>
					<td>${poniedzialek[7].przedmiot}<br>
						${poniedzialek[7].godziny}<br> ${poniedzialek[7].miejsce}</td>
					<td>${wtorek[7].przedmiot}<br>
						${wtorek[7].godziny}<br> ${wtorek[7].miejsce}</td>
					<td>${sroda[7].przedmiot}<br>
						${sroda[7].godziny}<br> ${sroda[7].miejsce}</td>
					<td>${czwartek[7].przedmiot}<br>
						${czwartek[7].godziny}<br> ${czwartek[7].miejsce}</td>
					<td>${piatek[7].przedmiot}<br>
						${piatek[7].godziny}<br> ${piatek[7].miejsce}</td>
					<td>${sobota[7].przedmiot}<br>
						${sobota[7].godziny}<br> ${sobota[7].miejsce}</td>
					<td>${niedziela[7].przedmiot}<br>
						${niedziela[7].godziny}<br> ${niedziela[7].miejsce}</td>
				</tr>
				<tr>
					<td>16:15-17:00</td>
					<td>${poniedzialek[8].przedmiot}<br>
						${poniedzialek[8].godziny}<br> ${poniedzialek[8].miejsce}</td>
					<td>${wtorek[8].przedmiot}<br>
						${wtorek[8].godziny}<br> ${wtorek[8].miejsce}</td>
					<td>${sroda[8].przedmiot}<br>
						${sroda[8].godziny}<br> ${sroda[8].miejsce}</td>
					<td>${czwartek[8].przedmiot}<br>
						${czwartek[8].godziny}<br> ${czwartek[8].miejsce}</td>
					<td>${piatek[8].przedmiot}<br>
						${piatek[8].godziny}<br> ${piatek[8].miejsce}</td>
					<td>${sobota[8].przedmiot}<br>
						${sobota[8].godziny}<br> ${sobota[8].miejsce}</td>
					<td>${niedziela[8].przedmiot}<br>
						${niedziela[8].godziny}<br> ${niedziela[8].miejsce}</td>
				</tr>
				<tr>
					<td>17:15-18:00</td>
					<td>${poniedzialek[9].przedmiot}<br>
						${poniedzialek[9].godziny}<br> ${poniedzialek[9].miejsce}</td>
					<td>${wtorek[9].przedmiot}<br>
						${wtorek[9].godziny}<br> ${wtorek[9].miejsce}</td>
					<td>${sroda[9].przedmiot}<br>
						${sroda[9].godziny}<br> ${sroda[9].miejsce}</td>
					<td>${czwartek[9].przedmiot}<br>
						${czwartek[9].godziny}<br> ${czwartek[9].miejsce}</td>
					<td>${piatek[9].przedmiot}<br>
						${piatek[9].godziny}<br> ${piatek[9].miejsce}</td>
					<td>${sobota[9].przedmiot}<br>
						${sobota[9].godziny}<br> ${sobota[9].miejsce}</td>
					<td>${niedziela[9].przedmiot}<br>
						${niedziela[9].godziny}<br> ${niedziela[9].miejsce}</td>
				</tr>
				<tr>
					<td>18:15-19:00</td>
				<td>${poniedzialek[10].przedmiot}<br>
						${poniedzialek[10].godziny}<br> ${poniedzialek[10].miejsce}</td>
					<td>${wtorek[10].przedmiot}<br>
						${wtorek[10].godziny}<br> ${wtorek[10].miejsce}</td>
					<td>${sroda[10].przedmiot}<br>
						${sroda[10].godziny}<br> ${sroda[10].miejsce}</td>
					<td>${czwartek[10].przedmiot}<br>
						${czwartek[10].godziny}<br> ${czwartek[10].miejsce}</td>
					<td>${piatek[10].przedmiot}<br>
						${piatek[10].godziny}<br> ${piatek[10].miejsce}</td>
					<td>${sobota[10].przedmiot}<br>
						${sobota[10].godziny}<br> ${sobota[10].miejsce}</td>
					<td>${niedziela[10].przedmiot}<br>
						${niedziela[10].godziny}<br> ${niedziela[10].miejsce}</td>
				</tr>
				<tr>
					<td>19:15-20:00</td>
					<td>${poniedzialek[11].przedmiot}<br>
						${poniedzialek[11].godziny}<br> ${poniedzialek[11].miejsce}</td>
					<td>${wtorek[11].przedmiot}<br>
						${wtorek[11].godziny}<br> ${wtorek[11].miejsce}</td>
					<td>${sroda[11].przedmiot}<br>
						${sroda[11].godziny}<br> ${sroda[11].miejsce}</td>
					<td>${czwartek[11].przedmiot}<br>
						${czwartek[11].godziny}<br> ${czwartek[11].miejsce}</td>
					<td>${piatek[11].przedmiot}<br>
						${piatek[11].godziny}<br> ${piatek[11].miejsce}</td>
					<td>${sobota[11].przedmiot}<br>
						${sobota[11].godziny}<br> ${sobota[11].miejsce}</td>
					<td>${niedziela[11].przedmiot}<br>
						${niedziela[11].godziny}<br> ${niedziela[11].miejsce}</td>
				</tr>
			</table>

		</center>

		<form:form action="/workers/dodajZajeciaPrepare" method="POST">
			<input type="hidden" name="workerId" value="${workerId}" />
			<button type="submit">Dodaj zajęcia</button>
		</form:form>
		<form:form action="/homepage" method="POST">
			<button type="submit">Powrót</button>
		</form:form>
	</div>
</body>
</html>