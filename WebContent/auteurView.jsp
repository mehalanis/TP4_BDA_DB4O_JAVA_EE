<%@include file='includes/header.jsp'%>
<main class="py-4">
	<div class="container">
	    <div class="row justify-content-center">
	        <div class="col-md-12">
	            <div class="card  ">
	                <div class="card-header text-white  bg-dark">Auteur View</div>
	                <%
	                Auteur a=(Auteur)request.getAttribute("Auteur");
	                %>
	                <div class="card-body">
						<form method="post" action="">
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Nom</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" value="<%=a.getNom() %>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Prenom</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" value="<%=a.getPrenom() %>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Date de Naissance</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" value="<%=a.getDateNaissance() %>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Lieu de Naissance</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" value="<%=a.getLieuNaissance() %>" required  autofocus>
	                            </div>
	                        </div>
	                        <div class="form-group row">
	                            <label for="nom" class="col-md-4 col-form-label text-md-right">Adresse</label>
	                            <div class="col-md-6">
	                                <input id="nom" type="Text" class="form-control" name="nom" value="<%=a.getAdresse() %>" required  autofocus>
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