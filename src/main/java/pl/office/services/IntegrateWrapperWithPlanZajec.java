package pl.office.services;

import java.util.List;

import pl.office.model.PlanZajec;

public class IntegrateWrapperWithPlanZajec {

	public PlanZajec integrateWrapper(PlanZajecWrapper planZajecWrapper) {

		PlanZajec planZajec = new PlanZajec();

		String eventWrap = "";
		String staffSurnameWrap = "";
		String tygodnie = "";
		String inicjalNazwiskaKropka = "";
		String startHourWrap = "";
		String endHourWrap = "";
		StringBuilder sB = new StringBuilder();

		List<String> listaTygodni = planZajecWrapper.getTygodnieZajec();
		
		
		for (int i = 0; i < listaTygodni.size(); i++) {
			if (listaTygodni.size() <= 1) {
				sB.append(listaTygodni.get(i));
			} else {
				if (i < listaTygodni.size()) {
					sB.append(listaTygodni.get(i)).append(",");
				} else {
					sB.append(listaTygodni.get(i));
				}
			}
		}

		tygodnie = sB.toString();

		startHourWrap = planZajecWrapper.getGodzinaRozpoczeciaHour() + ":"
				+ planZajecWrapper.getGodzinaRozpoczeciaMinutes();
		endHourWrap = planZajecWrapper.getGodzinaZakonczeniaHour() + ":"
				+ planZajecWrapper.getGodzinaZakonczeniaMinutes();

		eventWrap = planZajecWrapper.getDzienTygodnia() + " " + startHourWrap + "-" + endHourWrap + " " + tygodnie;

		inicjalNazwiskaKropka = planZajecWrapper.getNazwiskoProwadzacego().substring(0, 1) + ".";
		staffSurnameWrap = planZajecWrapper.getImieProwadzacego() + " " + inicjalNazwiskaKropka;

		planZajec.setEvent(eventWrap);
		planZajec.setEventCategory(planZajecWrapper.getKategoria());
		planZajec.setWeighting(planZajecWrapper.getWaga());
		planZajec.setModule(planZajecWrapper.getNazwaZajec());
		planZajec.setRoom(planZajecWrapper.getMiejsceZajec());
		planZajec.setStaffSurname(staffSurnameWrap);
		planZajec.setStaffForename("");
		planZajec.setGroup(planZajecWrapper.getGrupaDziekanska());
		planZajec.setStudent(planZajecWrapper.getStudent());
		planZajec.setIsProtected(planZajecWrapper.getIsProtected());
		planZajec.setGlobal(planZajecWrapper.getGlobal());
		planZajec.setDescription(planZajecWrapper.getOpis());

		return planZajec;
	}

}
