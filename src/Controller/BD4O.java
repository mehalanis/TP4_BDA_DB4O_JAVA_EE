package Controller;

import java.util.ArrayList;

import com.db4o.Db4oEmbedded;
import com.db4o.ObjectContainer;
import com.db4o.ObjectSet;
import com.db4o.query.Predicate;

import model.Auteur;
import model.Editeur;
import model.Livre;

public class BD4O {
	ObjectContainer db = null;

	public BD4O() {
		try {
			db = Db4oEmbedded.openFile(Db4oEmbedded.newConfiguration(),"TP4.db4o");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		 Auteur auteur=new Auteur(1,"anis","mehal","29/05/1999","blida","cite 400 blida");
		db.store(auteur);
		
		Editeur editeur=new Editeur(1,"editeur test 1","adresse editeur test 1");
		db.store(editeur);
		
		ArrayList<String> mots_cles=new ArrayList<String>();
		mots_cles.add("java");
		mots_cles.add("informatique");
		mots_cles.add("java ee");
		mots_cles.add("java FX");
		Livre livre=new Livre(1,"DEV JAVA","ISBN0001",auteur,editeur,"2020","informatique",mots_cles);
		db.store(livre);		 
		 
	}
	public ObjectSet query(Class c) {
		return db.query(c);
	}
	public void store(Object o) {
		db.store(o);
	}
	public ArrayList query(Predicate c) {
		return (ArrayList) db.query(c);
	}
	
	
}
