package pl.office.services;

import pl.office.model.PlanZajec;

public class IntegrateWrapperWithPlanZajec {

	public PlanZajec integrateWrapper(PlanZajecWrapper planZajecWrapper) {

		PlanZajec planZajec = new PlanZajec();

		String eventWrap = "";
		String staffSurnameWrap = "";
		String tygodnie = "";
		String inicjalImieniaKropka = "";
		String startHourWrap = "";
		String endHourWrap = "";

		tygodnie = planZajecWrapper.getTygodnieZajec();

		startHourWrap = planZajecWrapper.getGodzinaRozpoczeciaHour() + ":"
				+ planZajecWrapper.getGodzinaRozpoczeciaMinutes();
		endHourWrap = planZajecWrapper.getGodzinaZakonczeniaHour() + ":"
				+ planZajecWrapper.getGodzinaZakonczeniaMinutes();

		eventWrap = planZajecWrapper.getDzienTygodnia() + " " + startHourWrap + "-" + endHourWrap + " " + tygodnie;

		inicjalImieniaKropka = planZajecWrapper.getImieProwadzacego().substring(0, 1) + ".";
		staffSurnameWrap = planZajecWrapper.getNazwiskoProwadzacego() + " " + inicjalImieniaKropka;

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
