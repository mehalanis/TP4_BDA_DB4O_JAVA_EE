<%@include file='includes/header.jsp'%>
<main class="py-4">
	<div class="container">
	    <div class="row justify-content-center">
	        <div class="col-md-12">
	            <div class="card  ">
	                <div class="card-header text-white  bg-dark">Livre View</div>
	                <%
	                Livre e=(Livre)request.getAttribute("Livre");
	                %>
	                <div class="card-body">
						<form method="post" action="">
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Titre</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" value="<%=e.getTitre() %>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">ISBN</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" value="<%=e.getISBN() %>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Auteur(nom,prenom,date de naissance,...)</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" 
	                                value="<%=e.getAuteur().getNom()+","+e.getAuteur().getPrenom()+","+e.getAuteur().getDateNaissance()+",..."%>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Editeur(nom,adresse)</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" 
	                                value="<%=e.getEditeur().getNom()+" , "+e.getEditeur().getAdresse()%>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Ann�e d'�dition</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" 
	                                value="<%=e.getAnneeEdition()%>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Domaine</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" 
	                                value="<%=e.getDomaine()%>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Mots Cl�s</label>
	                            <div class="col-md-6">
	                            	<ul class="list-group">
	                            	<%for(String mot:e.getMotsCles()){ %>
 										 <li class="list-group-item"><%=mot %></li>
 									 <%} %>
									</ul>	                        
								</div>
	                        </div>
	                        <div class="form-group row mb-0">
	                            <div class="col-md-8 offset-md-4">
	                                <a href="/TP_BDA" class="btn btn-info">Retour</a>
	                            </div>
	                        </div>
                    	</form>	                  
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</main>
</body>
</html>