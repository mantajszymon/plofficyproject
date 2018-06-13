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
<link type="text/css" rel="stylesheet" href="styles/styles.css" />
</head>
<body>
	<div class="page-wrap">
		<header>
		<div id="head">
			<p>Dodawanie zajęć</p>
		</div>
		</header>
		<form id="planZajecForm" action="/dodajZajecia" method="POST">
			<input name="workerId" value="1" type="hidden">
			<table>
				<tbody>
					<tr>
						<td>Dzień tygodnia</td>
						<td><select id="PlanZajecWrapper.dzienTygodnia"
							name="PlanZajecWrapper.dzienTygodnia">
								<option value="Pn" selected="selected">Poniedziałek</option>
								<option value="Wt">Wtorek</option>
								<option value="Śr">Środa</option>
								<option value="Czw">Czwartek</option>
								<option value="Pt">Piątek</option>
								<option value="Sb">Sobota</option>
								<option value="Nd">Niedziela</option>
						</select></td>
					</tr>
					<tr>
						<td>Godzina rozpoczecia</td>
						<td><select id="PlanZajecWrapper.godzinaRozpoczeciaHour"
							name="PlanZajecWrapper.godzinaRozpoczeciaHour">
								<option value="00" selected="selected">00</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
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
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
						</select> <select id="PlanZajecWrapper.godzinaRozpoczeciaMinutes"
							name="PlanZajecWrapper.godzinaRozpoczeciaMinutes">
								<option value="00" selected="selected">00</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
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
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
								<option value="32">32</option>
								<option value="33">33</option>
								<option value="34">34</option>
								<option value="35">35</option>
								<option value="36">36</option>
								<option value="37">37</option>
								<option value="38">38</option>
								<option value="39">39</option>
								<option value="40">40</option>
								<option value="41">41</option>
								<option value="42">42</option>
								<option value="43">43</option>
								<option value="44">44</option>
								<option value="45">45</option>
								<option value="46">46</option>
								<option value="47">47</option>
								<option value="48">48</option>
								<option value="49">49</option>
								<option value="50">50</option>
								<option value="51">51</option>
								<option value="52">52</option>
								<option value="53">53</option>
								<option value="54">54</option>
								<option value="55">55</option>
								<option value="56">56</option>
								<option value="57">57</option>
								<option value="58">58</option>
								<option value="59">59</option>
						</select></td>

					</tr>
					<tr>
						<td>Godzina zakonczenia</td>
						<td><select id="PlanZajecWrapper.godzinaZakonczeniaHour"
							name="PlanZajecWrapper.godzinaZakonczeniaHour">
								<option value="00" selected="selected">00</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
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
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
						</select> <select id="PlanZajecWrapper.godzinaZakonczeniaMinutes"
							name="PlanZajecWrapper.godzinaZakonczeniaMinutes">
								<option value="00" selected="selected">00</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
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
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
								<option value="32">32</option>
								<option value="33">33</option>
								<option value="34">34</option>
								<option value="35">35</option>
								<option value="36">36</option>
								<option value="37">37</option>
								<option value="38">38</option>
								<option value="39">39</option>
								<option value="40">40</option>
								<option value="41">41</option>
								<option value="42">42</option>
								<option value="43">43</option>
								<option value="44">44</option>
								<option value="45">45</option>
								<option value="46">46</option>
								<option value="47">47</option>
								<option value="48">48</option>
								<option value="49">49</option>
								<option value="50">50</option>
								<option value="51">51</option>
								<option value="52">52</option>
								<option value="53">53</option>
								<option value="54">54</option>
								<option value="55">55</option>
								<option value="56">56</option>
								<option value="57">57</option>
								<option value="58">58</option>
								<option value="59">59</option>
						</select></td>
					</tr>
					<tr>
						<td>Tygodnie zajęć</td>
						<td><input id="PlanZajecWrapper.tygodnieZajec1"
							name="PlanZajecWrapper.tygodnieZajec" value="1" type="checkbox"><input
							name="_PlanZajecWrapper.tygodnieZajec" value="on" type="hidden">
							1</td>
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
		<form action="/" method="POST">
			<button type="submit">Powrót</button>
		</form>
	</div>

</body>
</html>