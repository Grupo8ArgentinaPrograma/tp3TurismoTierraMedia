<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
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
							aria-current="page"  href="/tierraMedia/itinerario2.jsp">
								Atracciones</a>
						
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/tierraMedia/logout">Logout</a></li>
					</ul>
				</div>

			</nav>
		</div>

	</header>


<body >
<div class="d-flex flex-column  align-items-center col-lg-5 mx-auto p-3 py-md-5">
	<img src="/tierraMedia/assets/img/gracias-por-tu-compra.png"></a>	
	<a href="../index.jsp" class="p-3 mb-2 bg-primary text-white">Seguri comprando</a>
</div>
</body>
<footer class="container-fluid  bg-dark text-white p-3 text-center fixed-bottom">
	<div class="container">
		<p class="fw-lighter mb-0 mt-1 blockquote-footer">&copy; 2021 -
			Derechos Reservados</p>
		<p class="fw-lighter mt-0 blockquote-footer">
			Desarrollado por Grupo 8 para TP Final en <a href="">APYP</a>
		</p>
	</div>
</footer>
</html>
