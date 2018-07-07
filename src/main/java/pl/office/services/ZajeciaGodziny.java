package pl.office.services;

public class ZajeciaGodziny {

	private String przedmiot;
	private String godziny;
	private String miejsce;
	
	
	public ZajeciaGodziny(String godziny, String przedmiot, String miejsce){
		this.przedmiot = przedmiot;
		this.godziny = godziny;
		this.miejsce = miejsce;
	}
	
	
	public String getPrzedmiot() {
		return przedmiot;
	}
	public void setPrzedmiot(String prowadzacy) {
		this.przedmiot = prowadzacy;
	}
	public String getGodziny() {
		return godziny;
	}
	public void setGodziny(String godziny) {
		this.godziny = godziny;
	}
	public String getMiejsce() {
		return miejsce;
	}
	public void setMiejsce(String miejsce) {
		this.miejsce = miejsce;
	}


	@Override
	public String toString() {
		return "ZajeciaGodziny [przedmiot=" + przedmiot + ", godziny=" + godziny + ", miejsce=" + miejsce + "]";
	}
	
	
	
}
