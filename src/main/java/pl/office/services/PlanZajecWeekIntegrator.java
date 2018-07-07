package pl.office.services;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import pl.office.controller.WorkerController;
import pl.office.model.PlanZajec;

public class PlanZajecWeekIntegrator {

	private static final Logger LOGGER = LoggerFactory.getLogger(PlanZajecWeekIntegrator.class);
	
	public PlanZajecWeek weekIntegrate(List<PlanZajec> planZajec) {
		PlanZajecWeek returnTenPlan = new PlanZajecWeek();
		List<PlanZajec> poniedzialek = new ArrayList<PlanZajec>();
		List<PlanZajec> wtorek = new ArrayList<PlanZajec>();
		List<PlanZajec> sroda = new ArrayList<PlanZajec>();
		List<PlanZajec> czwartek = new ArrayList<PlanZajec>();
		List<PlanZajec> piatek = new ArrayList<PlanZajec>();
		List<PlanZajec> sobota = new ArrayList<PlanZajec>();
		List<PlanZajec> niedziela = new ArrayList<PlanZajec>();

		for (PlanZajec zajecia : planZajec) {
			String dzienTygodnia = zajecia.getEvent().substring(0, 2);
			LOGGER.info("Dzien tygodnia: " + dzienTygodnia);
			switch (dzienTygodnia) {
			case "Pn":
				LOGGER.info("case pn");
				poniedzialek.add(zajecia);
				returnTenPlan.setPoniedzialek(poniedzialek);
				break;
			case "Wt":
				LOGGER.info("case wt");
				wtorek.add(zajecia);
				returnTenPlan.setWtorek(wtorek);
				break;
			case "Sr":
				LOGGER.info("case sr");
				sroda.add(zajecia);
				returnTenPlan.setSroda(sroda);
				break;
			case "Cz":
				LOGGER.info("case cz");
				czwartek.add(zajecia);
				returnTenPlan.setCzwartek(czwartek);
				break;
			case "Pt":
				LOGGER.info("case pt");
				piatek.add(zajecia);
				returnTenPlan.setPiatek(piatek);
				break;
			case "Sb":
				LOGGER.info("case sb");
				sobota.add(zajecia);
				returnTenPlan.setSobota(sobota);
				break;
			case "Nd":
				LOGGER.info("case nd");
				niedziela.add(zajecia);
				returnTenPlan.setNiedziela(niedziela);
				break;
			}
		}
		return returnTenPlan;
	}

}
