<%@include file='includes/header.jsp'%>
<main class="py-4">
	<div class="container">
	    <div class="row justify-content-center">
	        <div class="col-md-12">
	            <div class="card  ">
	                <div class="card-header text-white  bg-dark">Auteur</div>
	                <div class="card-body">
	                  <table class="table table-striped">
	                    <thead>
	                      <tr>
	                        <th scope="col">ID</th>
	                        <th scope="col">Nom</th>
	                        <th scope="col">Prenom</th>
	                        <th scope="col">Date de naissance</th>
	                        <th scope="col">Lieu de naissance</th>	                        
	                        <th scope="col">Adresse</th>
	                        <th scope="col">Operation</th>
	                      </tr>
	                    </thead>
	                    <tbody>
	                    		<%
								 ArrayList<Auteur> list=(ArrayList<Auteur>)request.getAttribute("list");
								 for(Auteur i:list){
								%>
								<tr>
									<td><%=i.getID() %></td>
									<td><%=i.getNom() %></td>
									<td><%=i.getPrenom() %></td>
									<td><%=i.getDateNaissance() %></td>
									<td><%=i.getLieuNaissance() %></td>
									<td><%=i.getAdresse()%></td>
									<td>
		                		          <a href="AuteurView?id=<%=i.getID() %>" style="margin:2px" class="btn btn-primary">View</a>
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