package pl.office.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity(name="PLOFFICE_ADDRESS")
public class Address {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	
	@Column(name = "miasto")
	private String miasto;
	@Column(name="kraj")
	private String kraj;
	@Column(name="kod_pocztowy")
	private String kodPocztowy;
	@Column(name="ulica")
	private String ulica;
	@Column(name="nr_ulicy")
	private String nrUlicy;
	@Column(name="nr_domu")
	private String nrDomu;
	

/*	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "address")
	private UserDetails userDetails;*/

	public String getMiasto() {
		return miasto;
	}

	public void setMiasto(String miasto) {
		this.miasto = miasto;
	}

	public String getKraj() {
		return kraj;
	}

	public void setKraj(String kraj) {
		this.kraj = kraj;
	}

	public String getKodPocztowy() {
		return kodPocztowy;
	}

	public void setKodPocztowy(String kodPocztowy) {
		this.kodPocztowy = kodPocztowy;
	}

	public String getUlica() {
		return ulica;
	}

	public void setUlica(String ulica) {
		this.ulica = ulica;
	}

	public String getNrUlicy() {
		return nrUlicy;
	}

	public void setNrUlicy(String nrUlicy) {
		this.nrUlicy = nrUlicy;
	}

	public String getNrDomu() {
		return nrDomu;
	}

	public void setNrDomu(String nrDomu) {
		this.nrDomu = nrDomu;
	}

	@Override
	public String toString() {
		return "Address [miasto=" + miasto + ", kraj=" + kraj + ", kodPocztowy=" + kodPocztowy + ", ulica=" + ulica
				+ ", nrUlicy=" + nrUlicy + ", nrDomu=" + nrDomu + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

/*	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}*/
	

}
