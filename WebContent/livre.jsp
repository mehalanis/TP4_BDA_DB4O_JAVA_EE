<%@include file='includes/header.jsp'%>
<main class="py-4">
	<div class="container">
	    <div class="row justify-content-center">
	        <div class="col-md-12">
	            <div class="card  ">
	                <div class="card-header text-white  bg-dark">Livre</div>
	                <div class="card-body">
	                  <table class="table table-striped">
	                    <thead>
	                      <tr>
	                        <th scope="col">ID</th>
	                        <th scope="col">Titre</th>
	                        <th scope="col">ISBN</th>
	                        <th scope="col">Auteur(nom,prenom)</th>
	                        <th scope="col">Editeur</th>
	                        <th scope="col">Annee d'edition</th>
	                        <th scope="col">Domaine</th>
	                        <th scope="col">Mots cl�s</th>
	                        <th scope="col">Operation</th>
	                      </tr>
	                    </thead>
	                    <tbody>
	                    		<%
								 ArrayList<Livre> list=(ArrayList<Livre>)request.getAttribute("Livre");
								 for(Livre i:list){
								%>
								<tr>
									<td><%=i.getID() %></td>
									<td><%=i.getTitre() %></td>
									<td><%=i.getISBN() %></td>
									<td><%=i.getAuteur().getNom()+" "+i.getAuteur().getPrenom() %></td>
									<td><%=i.getEditeur().getNom() %></td>
									<td><%=i.getAnneeEdition() %></td>
									<td><%=i.getDomaine() %></td>
									<td>
									<%
									for(String s:i.getMotsCles()) out.print(s+" , ");
									%>
									</td>
									<td>
		                		          <a href="LivreView?id=<%=i.getID() %>" style="margin:2px" class="btn btn-primary">View</a>
									</td>
								</tr>
								<%} %>
	                    </tbody>
	                  </table>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</main>
</body>
</html>