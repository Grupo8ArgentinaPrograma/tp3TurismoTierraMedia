<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="partials/head.jsp"></jsp:include>
<link rel="stylesheet" href="assets/stylesheets/estilosPunto7.css"
	type="text/css">
<link href="http://fonts.googleapis.com/css?family=ABeeZee"
	rel="stylesheet" type="text/css" />


</head>

<body>
	
	
	<header style="margin-bottom: 50px">
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
							aria-current="page" href="/tierraMedia/index.jsp">
								Seguir comprando</a>
						
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/tierraMedia/login.jsp"> Login</a></li>
					</ul>
				</div>

			</nav>
		</div>

	</header>
	
	
	
<main class="container" style="margin-bottom: 50px">
		<div class="bg-light p-4 rounded d-flex flex-wrap flex-column  align-items-center">
			<h2>Este es tu Itinerario,<c:out value="${usuario.nombre}"/></h2>
			<h6>
				Tiempo disponible: <c:out value="${usuario.tiempoDisponible}" />
				Dinero disponible: <c:out value="${usuario.dineroDisponible}" />
			</h6>
			
		</div>
	</main>
<div class="d-flex flex-wrap justify-content-around">
	
			<c:forEach items="${usuario.getProductosComprados()}" var="atracciones">
			
				<div class="card  align-self-center" style="margin-bottom: 30px; ">
						<img class="card-img-top" src="${atracciones.getImagen()}"	alt="Card image cap">
						<div class="card-body">
							<h6 class="card-title" style="text-align:center" >
								<c:out value="${atracciones.getNombre()}" />
							</h6>
	
						</div>
				</div>
				
			</c:forEach>
</div>

	



</body>
</html>