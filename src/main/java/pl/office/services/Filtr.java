package pl.office.services;

public class Filtr {
	
	private String wydzial;
	private String kierunek;
	private String imie;
	private String nazwisko;
	private String nrIndeksu;
	private String identyfikator;
	private String PESEL;
	
	
	
	public String getWydzial() {
		return wydzial;
	}
	public void setWydzial(String wydzial) {
		this.wydzial = wydzial;
	}
	public String getKierunek() {
		return kierunek;
	}
	public void setKierunek(String kierunek) {
		this.kierunek = kierunek;
	}
	public String getImie() {
		return imie;
	}
	public void setImie(String imie) {
		this.imie = imie;
	}
	public String getNazwisko() {
		return nazwisko;
	}
	public void setNazwisko(String nazwisko) {
		this.nazwisko = nazwisko;
	}
	public String getNrIndeksu() {
		return nrIndeksu;
	}
	public void setNrIndeksu(String nrIndeksu) {
		this.nrIndeksu = nrIndeksu;
	}
	public String getIdentyfikator() {
		return identyfikator;
	}
	public void setIdentyfikator(String identyfikator) {
		this.identyfikator = identyfikator;
	}
	public String getPESEL() {
		return PESEL;
	}
	public void setPESEL(String pESEL) {
		PESEL = pESEL;
	}
	@Override
	public String toString() {
		return "Filtr [wydzial=" + wydzial + ", kierunek=" + kierunek + ", imie=" + imie + ", nazwisko=" + nazwisko
				+ ", nrIndeksu=" + nrIndeksu + ", identyfikator=" + identyfikator + ", PESEL=" + PESEL + "]";
	}
	
	
	
}
