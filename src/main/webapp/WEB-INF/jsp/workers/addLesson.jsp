<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lista pracowników</title>
</head>
<body>
	<form:form action="/dodajZajecia" modelAttribute="planZajecForm"
		method="POST">
		<input type="hidden" name="workerId" value="${workerId}" />
		<table>
			<tr>
				<td>Dzień tygodnia</td>
				<td><form:select path="PlanZajecWrapper.dzienTygodnia" value="" >
				<form:option value="Pn">Poniedziałek</form:option>
				<form:option value="Wt">Wtorek</form:option>
				<form:option value="Śr">Środa</form:option>
				<form:option value="Czw">Czwartek</form:option>
				<form:option value="Pt">Piątek</form:option>
				<form:option value="Sb">Sobota</form:option>
				<form:option value="Nd">Niedziela</form:option>
				</form:select>
				</td>
			</tr>
			<tr>
				<td>Godzina rozpoczecia</td>
				<td>
				<form:select path="PlanZajecWrapper.godzinaRozpoczeciaHour" value="" >
      				<form:options items="${listaGodzin}"/>
				</form:select>
				<form:select path="PlanZajecWrapper.godzinaRozpoczeciaMinutes" value="" >
					<form:options items="${listaMinut}"/>
				</form:select>
				</td>
						
			</tr>
			<tr>
				<td>Godzina zakonczenia</td>
				<td>
				<form:select path="PlanZajecWrapper.godzinaZakonczeniaHour" value="" >
      				<form:options items="${listaGodzin}"/>
				</form:select>
				<form:select path="PlanZajecWrapper.godzinaZakonczeniaMinutes" value="" >
					<form:options items="${listaMinut}"/>
				</form:select></td>
			</tr>
			<tr>
				<td>Tygodnie zajęć</td>
				<td><form:checkbox path="PlanZajecWrapper.tygodnieZajec"
						value="1" /> 1</td>
			</tr>
			<tr>
				<td>Kategoria</td>
				<td><form:input path="PlanZajecWrapper.kategoria" value="" /></td>
			</tr>
			<tr>
				<td>Waga</td>
				<td><form:input path="PlanZajecWrapper.waga" value="" /></td>
			</tr>
			<tr>
				<td>Nazwa zajęć</td>
				<td><form:input path="PlanZajecWrapper.nazwaZajec" value="" /></td>
			</tr>
			<tr>
				<td>Miejsce zajęć</td>
				<td><form:input path="PlanZajecWrapper.miejsceZajec" value="" /></td>
			</tr>
			<tr>
				<td>Imię prowadzącego</td>
				<td><form:input path="PlanZajecWrapper.imieProwadzacego"
						value="" /></td>
			</tr>
			<tr>
				<td>Nazwisko prowadzącego</td>
				<td><form:input path="PlanZajecWrapper.nazwiskoProwadzacego"
						value="" /></td>
			</tr>
			<tr>
				<td>Protected</td>
				<td><form:input path="PlanZajecWrapper.isProtected" value="" /></td>
			</tr>
			<tr>
				<td>Student idywidualny</td>
				<td><form:input path="PlanZajecWrapper.student" value="" /></td>
			</tr>
			<tr>
				<td>Global</td>
				<td><form:input path="PlanZajecWrapper.global" value="" /></td>
			</tr>
			<tr>
				<td>Grupa dziekańska</td>
				<td><form:input path="PlanZajecWrapper.grupaDziekanska"
						value="" /></td>
			</tr>
			<tr>
				<td>Opis przedmiotu</td>
				<td><form:input path="PlanZajecWrapper.opis" value="" /></td>
			</tr>
		</table>
		<button type="submit">Dodaj zajęcia do planu.</button>
	</form:form>
	<form action="/" method="POST">
		<button type="submit">Powrót</button>
	</form>
</body>
</html>