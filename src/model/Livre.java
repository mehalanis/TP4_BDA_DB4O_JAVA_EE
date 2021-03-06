package model;

import java.util.ArrayList;

public class Livre {
	private final int ID;
	private String Titre;
	private String ISBN;
	private Auteur Auteur;
	private Editeur Editeur;
	private String AnneeEdition;
	private String Domaine;
	private ArrayList<String> MotsCles;
	public Livre(int iD, String titre, String iSBN, model.Auteur auteur, model.Editeur editeur, String anneeEdition,
			String domaine, ArrayList<String> motsCles) {
		ID = iD;
		Titre = titre;
		ISBN = iSBN;
		Auteur = auteur;
		Editeur = editeur;
		AnneeEdition = anneeEdition;
		Domaine = domaine;
		MotsCles = motsCles;
	}
	public String getTitre() {
		return Titre;
	}
	public void setTitre(String titre) {
		Titre = titre;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public Auteur getAuteur() {
		return Auteur;
	}
	public void setAuteur(Auteur auteur) {
		Auteur = auteur;
	}
	public Editeur getEditeur() {
		return Editeur;
	}
	public void setEditeur(Editeur editeur) {
		Editeur = editeur;
	}
	public String getAnneeEdition() {
		return AnneeEdition;
	}
	public void setAnneeEdition(String anneeEdition) {
		AnneeEdition = anneeEdition;
	}
	public String getDomaine() {
		return Domaine;
	}
	public void setDomaine(String domaine) {
		Domaine = domaine;
	}
	public ArrayList<String> getMotsCles() {
		return MotsCles;
	}
	public void setMotsCles(ArrayList<String> motsCles) {
		MotsCles = motsCles;
	}
	public int getID() {
		return ID;
	}
	
	
}
