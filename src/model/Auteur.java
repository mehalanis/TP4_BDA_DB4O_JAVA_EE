package model;

public class Auteur {
	private final int ID;
	private String Nom;
	private String Prenom;
	private String DateNaissance;
	private String LieuNaissance;
	private String Adresse;
	public Auteur(int iD, String nom, String prenom, String dateNaissance, String lieuNaissance, String adresse) {
		ID = iD;
		Nom = nom;
		Prenom = prenom;
		DateNaissance = dateNaissance;
		LieuNaissance = lieuNaissance;
		Adresse = adresse;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPrenom() {
		return Prenom;
	}
	public void setPrenom(String prenom) {
		Prenom = prenom;
	}
	public String getDateNaissance() {
		return DateNaissance;
	}
	public void setDateNaissance(String dateNaissance) {
		DateNaissance = dateNaissance;
	}
	public String getLieuNaissance() {
		return LieuNaissance;
	}
	public void setLieuNaissance(String lieuNaissance) {
		LieuNaissance = lieuNaissance;
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
