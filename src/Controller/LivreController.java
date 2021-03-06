package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db4o.ObjectSet;

import model.Auteur;
import model.Editeur;
import model.Livre;

/**
 * Servlet implementation class LivreController
 */
@WebServlet("/Livre")
public class LivreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LivreController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BD4O db=new BD4O();
		ObjectSet result=db.query(Livre.class);
		
		ArrayList<Livre> list=new ArrayList<Livre>();
		while(result.hasNext()) {
			list.add((Livre)result.next());
		}
		
		request.setAttribute("Livre", list);
		this.getServletContext().getRequestDispatcher("/livre.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
