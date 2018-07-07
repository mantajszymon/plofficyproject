package pl.office.services;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import pl.office.model.PlanZajec;

public class PlanZajecDayIntegrator {

	private static final Logger LOGGER = LoggerFactory.getLogger(PlanZajecDayIntegrator.class);

	public List<ZajeciaGodziny> integrateDayHours(PlanZajecWeek planZajecWeek, String day) {
		List<ZajeciaGodziny> listWithDaysAndHours = new ArrayList<ZajeciaGodziny>();

		switch (day) {
		case "poniedzialek":
			LOGGER.info("case2 pn");
			List<PlanZajec> listOfClasses = planZajecWeek.getPoniedzialek();
			for (int i = 8; i <= 21; i++) {

				boolean exists = false;
				String godzinaRozpoczeciaZajec = "";
				String godziny = "";
				String miejsce = "";
				String przedmiot = "";
				if (listOfClasses != null) {
					for (PlanZajec planZajec : listOfClasses) {
						godzinaRozpoczeciaZajec = planZajec.getEvent().substring(3, 5);
						if (godzinaRozpoczeciaZajec.startsWith(String.valueOf(i))) {
							godziny = planZajec.getEvent();
							miejsce = planZajec.getRoom();
							przedmiot = planZajec.getModule();
							exists = true;
						}
					}
				}

				if (exists == true) {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
					exists = false;
				} else {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
				}

			}
			break;
		case "wtorek":
			LOGGER.info("case2 wt");
			List<PlanZajec> listOfClassesWt = planZajecWeek.getWtorek();
			for (int i = 8; i <= 21; i++) {

				boolean exists = false;
				String godzinaRozpoczeciaZajec = "";
				String godziny = "";
				String miejsce = "";
				String przedmiot = "";
				if (listOfClassesWt != null) {
					for (PlanZajec planZajec : listOfClassesWt) {
						godzinaRozpoczeciaZajec = planZajec.getEvent().substring(3, 5);
						if (godzinaRozpoczeciaZajec.startsWith(String.valueOf(i))) {
							godziny = planZajec.getEvent();
							miejsce = planZajec.getRoom();
							przedmiot = planZajec.getModule();
							exists = true;
						}
					}
				}

				if (exists == true) {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
					exists = false;
				} else {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
				}

			}
			break;

		case "sroda":
			LOGGER.info("case2 sr");
			List<PlanZajec> listOfClassesSr = planZajecWeek.getSroda();
			for (int i = 8; i <= 21; i++) {

				boolean exists = false;
				String godzinaRozpoczeciaZajec = "";
				String godziny = "";
				String miejsce = "";
				String przedmiot = "";
				if (listOfClassesSr != null) {
					for (PlanZajec planZajec : listOfClassesSr) {
						godzinaRozpoczeciaZajec = planZajec.getEvent().substring(3, 5);
						if (godzinaRozpoczeciaZajec.startsWith(String.valueOf(i))) {
							godziny = planZajec.getEvent();
							miejsce = planZajec.getRoom();
							przedmiot = planZajec.getModule();
							exists = true;
						}
					}
				}

				if (exists == true) {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
					exists = false;
				} else {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
				}

			}
			break;

		case "czwartek":
			LOGGER.info("case2 cz");
			List<PlanZajec> listOfClassesCz = planZajecWeek.getCzwartek();
			for (int i = 8; i <= 21; i++) {

				boolean exists = false;
				String godzinaRozpoczeciaZajec = "";
				String godziny = "";
				String miejsce = "";
				String przedmiot = "";
				if (listOfClassesCz != null) {
					for (PlanZajec planZajec : listOfClassesCz) {
						godzinaRozpoczeciaZajec = planZajec.getEvent().substring(3, 5);
						if (godzinaRozpoczeciaZajec.startsWith(String.valueOf(i))) {
							godziny = planZajec.getEvent();
							miejsce = planZajec.getRoom();
							przedmiot = planZajec.getModule();
							exists = true;
						}
					}
				}

				if (exists == true) {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
					exists = false;
				} else {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
				}

			}
			break;

		case "piatek":
			LOGGER.info("case2 pt");
			List<PlanZajec> listOfClassesPt = planZajecWeek.getPiatek();
			for (int i = 8; i <= 21; i++) {

				boolean exists = false;
				String godzinaRozpoczeciaZajec = "";
				String godziny = "";
				String miejsce = "";
				String przedmiot = "";
				if (listOfClassesPt != null) {
					for (PlanZajec planZajec : listOfClassesPt) {
						godzinaRozpoczeciaZajec = planZajec.getEvent().substring(3, 5);
						if (godzinaRozpoczeciaZajec.startsWith(String.valueOf(i))) {
							godziny = planZajec.getEvent();
							miejsce = planZajec.getRoom();
							przedmiot = planZajec.getModule();
							exists = true;
						}
					}
				}

				if (exists == true) {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
					exists = false;
				} else {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
				}

			}
			break;

		case "sobota":
			LOGGER.info("case2 sb");
			List<PlanZajec> listOfClassesSb = planZajecWeek.getSobota();
			for (int i = 8; i <= 21; i++) {

				boolean exists = false;
				String godzinaRozpoczeciaZajec = "";
				String godziny = "";
				String miejsce = "";
				String przedmiot = "";
				if (listOfClassesSb != null) {
					for (PlanZajec planZajec : listOfClassesSb) {
						godzinaRozpoczeciaZajec = planZajec.getEvent().substring(3, 5);
						if (godzinaRozpoczeciaZajec.startsWith(String.valueOf(i))) {
							godziny = planZajec.getEvent();
							miejsce = planZajec.getRoom();
							przedmiot = planZajec.getModule();
							exists = true;
						}
					}
				}

				if (exists == true) {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
					exists = false;
				} else {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
				}

			}
			break;
		case "niedziela":
			LOGGER.info("case2 nd");
			List<PlanZajec> listOfClassesNd = planZajecWeek.getNiedziela();
			for (int i = 8; i <= 21; i++) {

				boolean exists = false;
				String godzinaRozpoczeciaZajec = "";
				String godziny = "";
				String miejsce = "";
				String przedmiot = "";
				if (listOfClassesNd != null) {
					for (PlanZajec planZajec : listOfClassesNd) {
						godzinaRozpoczeciaZajec = planZajec.getEvent().substring(3, 5);
						if (godzinaRozpoczeciaZajec.startsWith(String.valueOf(i))) {
							godziny = planZajec.getEvent();
							miejsce = planZajec.getRoom();
							przedmiot = planZajec.getModule();
							exists = true;
						}
					}
				}

				if (exists == true) {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
					exists = false;
				} else {
					listWithDaysAndHours.add(new ZajeciaGodziny(godziny, przedmiot, miejsce));
				}

			}
			break;
		}

		return listWithDaysAndHours;
	}

}
