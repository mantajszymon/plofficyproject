package pl.office.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "PLOFFICE_USER_DETAILS")
public class UserDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	
	@Column(name="imie")
	private String imie;
	@Column(name="nazwisko")
	private String nazwisko;
	@Column(name="PESEL")
	private Long PESEL;
	@Column(name="nr_indeksu")
	private Long nrIndeksu;
	@Column(name="nr_tel_prywatny")
	private Long nrTelefonuPrywatny;
	@Column(name="nr_tel_sluzbowy")
	private Long nrTelefonuSluzbowy;
	@Column(name="plec")
	private String plec;
	@Column(name="typ")
	private String typ;
	
	
	@OneToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	@OneToOne
	@JoinColumn(name = "address_id")
	private Address adres;

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

	public Long getPESEL() {
		return PESEL;
	}

	public void setPESEL(Long pESEL) {
		PESEL = pESEL;
	}

	public Long getNrIndeksu() {
		return nrIndeksu;
	}

	public void setNrIndeksu(Long nrIndeksu) {
		this.nrIndeksu = nrIndeksu;
	}

	public Long getNrTelefonuPrywatny() {
		return nrTelefonuPrywatny;
	}

	public void setNrTelefonuPrywatny(Long nrTelefonuPrywatny) {
		this.nrTelefonuPrywatny = nrTelefonuPrywatny;
	}

	public Long getNrTelefonuSluzbowy() {
		return nrTelefonuSluzbowy;
	}

	public void setNrTelefonuSluzbowy(Long nrTelefonuSluzbowy) {
		this.nrTelefonuSluzbowy = nrTelefonuSluzbowy;
	}

	public String getPlec() {
		return plec;
	}

	public void setPlec(String plec) {
		this.plec = plec;
	}

	public String getTyp() {
		return typ;
	}

	public void setTyp(String typ) {
		this.typ = typ;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Address getAdres() {
		return adres;
	}

	public void setAdres(Address adres) {
		this.adres = adres;
	}
	
	
	
}
