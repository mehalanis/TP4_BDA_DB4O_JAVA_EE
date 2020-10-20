package model;

public class Editeur {
	private final int ID;
	private String nom;
	private String Adresse;
	public Editeur(int iD, String nom, String adresse) {
		super();
		ID = iD;
		this.nom = nom;
		Adresse = adresse;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getAdresse() {
		return Adresse;
	}
	public void setAdresse(String adresse) {
		Adresse = adresse;
	}
	public int getID() {
		return ID;
	}
	
}
