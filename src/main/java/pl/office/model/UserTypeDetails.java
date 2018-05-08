package pl.office.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="ploffice_user_type_detail")
public class UserTypeDetails {
	
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private Long id;
	
	private String nrIndeksu;
	private String identyfikator;
	private String tytul;
//	private String stanowisko;
	private String wydzial;
	private String trybStudiow;
	private String rok;
	private String semestr;
	private String kierunek;
	private String stopienStudiow;
	
	
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
	public String getTytul() {
		return tytul;
	}
	public void setTytul(String tytul) {
		this.tytul = tytul;
	}
	public String getWydzial() {
		return wydzial;
	}
	public void setWydzial(String wydzial) {
		this.wydzial = wydzial;
	}
	public String getTrybStudiow() {
		return trybStudiow;
	}
	public void setTrybStudiow(String trybStudiow) {
		this.trybStudiow = trybStudiow;
	}
	public String getRok() {
		return rok;
	}
	public void setRok(String rok) {
		this.rok = rok;
	}
	public String getSemestr() {
		return semestr;
	}
	public void setSemestr(String semestr) {
		this.semestr = semestr;
	}
	public String getKierunek() {
		return kierunek;
	}
	public void setKierunek(String kierunek) {
		this.kierunek = kierunek;
	}
	public String getStopienStudiow() {
		return stopienStudiow;
	}
	public void setStopienStudiow(String stopienStudiow) {
		this.stopienStudiow = stopienStudiow;
	}
	@Override
	public String toString() {
		return "UserTypeDetails [nrIndeksu=" + nrIndeksu + ", identyfikator=" + identyfikator
				+ ", tytul=" + tytul + ", wydzial=" + wydzial + ", trybStudiow=" + trybStudiow + ", rok=" + rok
				+ ", semestr=" + semestr + ", kierunek=" + kierunek + ", stopienStudiow=" + stopienStudiow + "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	

}
