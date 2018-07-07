package pl.office.services;

import java.util.List;

import pl.office.model.PlanZajec;

public class PlanZajecWeek {

	private List<PlanZajec> poniedzialek;
	private List<PlanZajec> wtorek;
	private List<PlanZajec> sroda;
	private List<PlanZajec> czwartek;
	private List<PlanZajec> piatek;
	private List<PlanZajec> sobota;
	private List<PlanZajec> niedziela;

	public List<PlanZajec> getPoniedzialek() {
		return poniedzialek;
	}

	public void setPoniedzialek(List<PlanZajec> poniedzialek) {
		this.poniedzialek = poniedzialek;
	}

	public List<PlanZajec> getWtorek() {
		return wtorek;
	}

	public void setWtorek(List<PlanZajec> wtorek) {
		this.wtorek = wtorek;
	}

	public List<PlanZajec> getSroda() {
		return sroda;
	}

	public void setSroda(List<PlanZajec> sroda) {
		this.sroda = sroda;
	}

	public List<PlanZajec> getCzwartek() {
		return czwartek;
	}

	public void setCzwartek(List<PlanZajec> czwartek) {
		this.czwartek = czwartek;
	}

	public List<PlanZajec> getPiatek() {
		return piatek;
	}

	public void setPiatek(List<PlanZajec> piatek) {
		this.piatek = piatek;
	}

	public List<PlanZajec> getSobota() {
		return sobota;
	}

	public void setSobota(List<PlanZajec> sobota) {
		this.sobota = sobota;
	}

	public List<PlanZajec> getNiedziela() {
		return niedziela;
	}

	public void setNiedziela(List<PlanZajec> niedziela) {
		this.niedziela = niedziela;
	}

	@Override
	public String toString() {
		StringBuilder sbPn = new StringBuilder();
		StringBuilder sbWt = new StringBuilder();
		StringBuilder sbSr = new StringBuilder();
		StringBuilder sbCz = new StringBuilder();
		StringBuilder sbPt = new StringBuilder();
		StringBuilder sbSb = new StringBuilder();
		StringBuilder sbNd = new StringBuilder();

		if (poniedzialek != null) {
			for (PlanZajec planZajec : poniedzialek) {
				sbPn.append(planZajec.getModule() + " ");
			}
		} else
			sbPn.append("empty");

		if (wtorek != null) {
			for (PlanZajec planZajec : wtorek) {
				sbWt.append(planZajec.getModule() + " ");
			}
		} else
			sbWt.append("empty");

		if (sroda != null) {
			for (PlanZajec planZajec : sroda) {
				sbSr.append(planZajec.getModule() + " ");
			}
		} else
			sbSr.append("empty");

		if (czwartek != null) {
			for (PlanZajec planZajec : czwartek) {
				sbCz.append(planZajec.getModule() + " ");
			}
		} else
			sbCz.append("empty");

		if (piatek != null) {
			for (PlanZajec planZajec : piatek) {
				sbPt.append(planZajec.getModule() + " ");
			}
		} else
			sbPt.append("empty");

		if (sobota != null) {
			for (PlanZajec planZajec : sobota) {
				sbSb.append(planZajec.getModule() + " ");
			}
		} else
			sbSb.append("empty");

		if (niedziela != null) {
			for (PlanZajec planZajec : niedziela) {
				sbNd.append(planZajec.getModule() + " ");
			}
		}
		sbNd.append("empty");

		return "PlanZajecWeek [poniedzialek=" +

				sbPn.toString() + ", wtorek=" + sbWt.toString() + ", sroda=" + sbSr.toString() + ", czwartek="
				+ sbCz.toString() + ", piatek=" + sbPt.toString() + ", sobota=" + sbSb.toString() + ", niedziela="
				+ sbNd.toString() + "]";
	}

}