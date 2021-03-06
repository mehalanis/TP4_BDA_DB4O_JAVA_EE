<%@include file='includes/header.jsp'%>
<main class="py-4">
	<div class="container">
	    <div class="row justify-content-center">
	        <div class="col-md-12">
	            <div class="card  ">
	                <div class="card-header text-white  bg-dark">Editeur</div>
	                <div class="card-body">
	                  <table class="table table-striped">
	                    <thead>
	                      <tr>
	                        <th scope="col">ID</th>
	                        <th scope="col">Nom</th>
	                        <th scope="col">Adresse</th>
	                        <th scope="col">Operation</th>
	                      </tr>
	                    </thead>
	                    <tbody>
	                    		<%
								 ArrayList<Editeur> list=(ArrayList<Editeur>)request.getAttribute("list");
								 for(Editeur i:list){
								%>
								<tr>
									<td><%=i.getID() %></td>
									<td><%=i.getNom() %></td>
									<td><%=i.getAdresse() %></td>
									<td>
		                		          <a href="EditeurView?id=<%=i.getID() %>" style="margin:2px" class="btn btn-primary">View</a>
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