package net.codejava.firma.model;

public class Company {
	private Integer id;
	private String isim;
	private String TC;
	private String adres;
	private String tel;
	private String email;
	private String dTarih;
	private String Soru1;
	private String Soru2;
	private String isAdres;
	private String miktar;
	private String notlar;
	
	public Company() {}
	public Company(Integer id, String isim, String tC, String adres, String tel, String email, String dTarih,
			String soru1, String soru2, String isAdres, String miktar, String notlar) {
		this(isim, tC, adres, tel, email, dTarih, soru1, soru2, isAdres, miktar, notlar);
		this.id = id;
	}

	public Company(String isim, String tC, String adres, String tel, String email, String dTarih, String soru1,
			String soru2, String isAdres, String miktar, String notlar) {
		this.isim = isim;
		TC = tC;
		this.adres = adres;
		this.tel = tel;
		this.email = email;
		this.dTarih = dTarih;
		Soru1 = soru1;
		Soru2 = soru2;
		this.isAdres = isAdres;
		this.miktar = miktar;
		this.notlar = notlar;
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIsim() {
		return isim;
	}

	public void setIsim(String isim) {
		this.isim = isim;
	}

	public String getTC() {
		return TC;
	}

	public void setTC(String tC) {
		TC = tC;
	}

	public String getAdres() {
		return adres;
	}

	public void setAdres(String adres) {
		this.adres = adres;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getdTarih() {
		return dTarih;
	}

	public void setdTarih(String dTarih) {
		this.dTarih = dTarih;
	}

	public String getSoru1() {
		return Soru1;
	}

	public void setSoru1(String soru1) {
		Soru1 = soru1;
	}

	public String getSoru2() {
		return Soru2;
	}

	public void setSoru2(String soru2) {
		Soru2 = soru2;
	}

	public String getIsAdres() {
		return isAdres;
	}

	public void setIsAdres(String isAdres) {
		this.isAdres = isAdres;
	}

	public String getMiktar() {
		return miktar;
	}

	public void setMiktar(String miktar) {
		this.miktar = miktar;
	}

	public String getNotlar() {
		return notlar;
	}

	public void setNotlar(String notlar) {
		this.notlar = notlar;
	}

	

	
	@Override
	public String toString() {
		return "Company [id=" + id + ", isim=" + isim + ", TC=" + TC + ", adres=" + adres + ", tel=" + tel + ", email="
				+ email + ", dTarih=" + dTarih + ", Soru1=" + Soru1 + ", Soru2=" + Soru2 + ", isAdres=" + isAdres
				+ ", miktar=" + miktar + ", notlar=" + notlar +   "]";
	}

	
	
}
