package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db4o.ObjectSet;
import com.db4o.query.Query;

import model.Auteur;
import model.Editeur;
import model.Livre;

/**
 * Servlet implementation class LivreView
 */
@WebServlet("/LivreView")
public class LivreView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LivreView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int GET_id=Integer.parseInt(request.getParameter("id"));
		
		BD4O db=new BD4O();
		
		Query q=db.db.query();
		q.constrain(Livre.class);
		q.descend("ID").constrain(new Integer(GET_id));
		ObjectSet result=q.execute();
		
		if(result.size()==1) {
			Livre e=(Livre)result.next();
			request.setAttribute("Livre",e);
			this.getServletContext().getRequestDispatcher("/livreView.jsp").forward(request, response);
		}else {
			response.getWriter().println("Livre n'existe pas");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
