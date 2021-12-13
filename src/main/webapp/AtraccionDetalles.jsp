<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<header >
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="navbar-brand" href="#"> <img src="/tierraMedia/assets/img/2Logo_AventurasTM_Fondo_Blanco_Logo.png"
					alt="Logo Tierra Media" height="40">
				</a>
				

				<!-- Boton Hamburguer -->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse text-dark" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/tierraMedia/itinerario2.jsp">
								Itinerario</a>
				
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/tierraMedia/logout">Logout</a></li>
					</ul>
				</div>

			</nav>
		</div>

	</header>

<body >
<div class="d-flex flex-column  align-items-center col-lg-5 mx-auto p-3 py-md-5">
	
	<h1 class="card-title"><c:out value="${atracciones.getNombre()}"/> </h1>
	
	<img  src="${atracciones.getImagen()}" style="margin: 40px" alt="Card image cap">
	
	<p class="card-text"><c:out value="${atracciones.getDescripcion()}"/></p>
	<h3>Costo recorrido</h3>
	<p class="card-text"><c:out value="${atracciones.getCosto()}"/></p>
	<h3>Tiempo recorrido</h3>
	<p class="card-text"><c:out value="${atracciones.getTiempoRecorrido()}"/></p>
	<h3>Tipo de recorrido</h3>
	<p class="card-text"><c:out value="${atracciones.getTipo()}"/></p>
	
	
	
		
		<form action="../atraccions/comprar.do" method="get">
			<input type="hidden" name="id" value="${atracciones.getId()}">
			<input type="hidden" name="user" value="${usuario.getNombre()}">
			<input type="hidden" name="nombre" value="${atracciones.getNombre()}">
			
			<div class ="d-flex flex-wrap justify-content-around ">
				<input  class="btn btn-primary btn-lg" type="submit" style="margin: 30px" value="comprar">
				<a href="../index.jsp" class="btn btn-primary btn-lg" style="margin: 30px">Volver</a>
			</div>
			
		</form>	
</div>	
			
			
			
</body>
<jsp:include page="/partials/footer.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>