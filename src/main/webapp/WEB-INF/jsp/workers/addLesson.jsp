<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Dodawanie zajęć</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/styles/styles.css" />
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head">
			<p>Dodawanie zajęć</p>
		</div>

		<c:if test="${not empty message}">
			<p>${message}</p>
		</c:if> </header>
		<form id="planZajecForm" action="/workers/dodajZajecia" method="POST">
			<input name="workerId" value="${workerId}" type="hidden">
			<table>
				<tbody>
					<tr>
						<td>Dzień tygodnia</td>
						<td><select id="PlanZajecWrapper.dzienTygodnia"
							name="PlanZajecWrapper.dzienTygodnia">
								<option value="Pn" selected="selected">Poniedziałek</option>
								<option value="Wt">Wtorek</option>
								<option value="Śr">Środa</option>
								<option value="Cz">Czwartek</option>
								<option value="Pt">Piątek</option>
								<option value="Sb">Sobota</option>
								<option value="Nd">Niedziela</option>
						</select></td>
					</tr>
					<tr>
						<td>Godzina rozpoczecia</td>
						<td><select id="PlanZajecWrapper.godzinaRozpoczeciaHour"
							name="PlanZajecWrapper.godzinaRozpoczeciaHour">
								<option value="8" selected="selected">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
						</select> <select id="PlanZajecWrapper.godzinaRozpoczeciaMinutes"
							name="PlanZajecWrapper.godzinaRozpoczeciaMinutes">
								<option value="15" selected="selected">15</option>
						</select></td>

					</tr>
					<tr>
						<td>Godzina zakonczenia</td>
						<td><select id="PlanZajecWrapper.godzinaZakonczeniaHour"
							name="PlanZajecWrapper.godzinaZakonczeniaHour">
								<option value="9" selected="selected">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
						</select> <select id="PlanZajecWrapper.godzinaZakonczeniaMinutes"
							name="PlanZajecWrapper.godzinaZakonczeniaMinutes">
								<option value="00" selected="selected">00</option>
						</select></td>
					</tr>
					<tr>
						<td>Tygodnie zajęć</td>
						<td><input id="PlanZajecWrapper.tygodnieZajec1"
							name="PlanZajecWrapper.tygodnieZajec" value="2,4,6,8,10,12,14"
							type="checkbox"> <input
							name="_PlanZajecWrapper.tygodnieZajec" value="on" type="hidden">
							parzyste</td>
						<td><input id="PlanZajecWrapper.tygodnieZajec1"
							name="PlanZajecWrapper.tygodnieZajec" value="1,3,5,7,9,11,13,15"
							type="checkbox"> <input
							name="_PlanZajecWrapper.tygodnieZajec" value="on" type="hidden">
							nieparzyste</td>
						<td><input id="PlanZajecWrapper.tygodnieZajec1"
							name="PlanZajecWrapper.tygodnieZajec" value="1-15"
							type="checkbox"> <input
							name="_PlanZajecWrapper.tygodnieZajec" value="on" type="hidden">
							cotygodniowe</td>
					</tr>
					<tr>
						<td>Kategoria</td>
						<td><input id="PlanZajecWrapper.kategoria"
							name="PlanZajecWrapper.kategoria" type="text"></td>
					</tr>
					<tr>
						<td>Waga</td>
						<td><input id="PlanZajecWrapper.waga"
							name="PlanZajecWrapper.waga" type="text"></td>
					</tr>
					<tr>
						<td>Nazwa zajęć</td>
						<td><input id="PlanZajecWrapper.nazwaZajec"
							name="PlanZajecWrapper.nazwaZajec" type="text"></td>
					</tr>
					<tr>
						<td>Miejsce zajęć</td>
						<td><input id="PlanZajecWrapper.miejsceZajec"
							name="PlanZajecWrapper.miejsceZajec" type="text"></td>
					</tr>
					<tr>
						<td>Imię prowadzącego</td>
						<td><input id="PlanZajecWrapper.imieProwadzacego"
							name="PlanZajecWrapper.imieProwadzacego" type="text"></td>
					</tr>
					<tr>
						<td>Nazwisko prowadzącego</td>
						<td><input id="PlanZajecWrapper.nazwiskoProwadzacego"
							name="PlanZajecWrapper.nazwiskoProwadzacego" type="text"></td>
					</tr>
					<tr>
						<td>Protected</td>
						<td><input id="PlanZajecWrapper.isProtected"
							name="PlanZajecWrapper.isProtected" type="text"></td>
					</tr>
					<tr>
						<td>Student idywidualny</td>
						<td><input id="PlanZajecWrapper.student"
							name="PlanZajecWrapper.student" type="text"></td>
					</tr>
					<tr>
						<td>Global</td>
						<td><input id="PlanZajecWrapper.global"
							name="PlanZajecWrapper.global" type="text"></td>
					</tr>
					<tr>
						<td>Grupa dziekańska</td>
						<td><input id="PlanZajecWrapper.grupaDziekanska"
							name="PlanZajecWrapper.grupaDziekanska" type="text"></td>
					</tr>
					<tr>
						<td>Opis przedmiotu</td>
						<td><input id="PlanZajecWrapper.opis"
							name="PlanZajecWrapper.opis" type="text"></td>
					</tr>
				</tbody>
			</table>
			<button type="submit">Dodaj zajęcia do planu.</button>
		</form>
		<form action="/homepage" method="POST">
			<button type="submit">Powrót</button>
		</form>
	</div>

</body>
</html>