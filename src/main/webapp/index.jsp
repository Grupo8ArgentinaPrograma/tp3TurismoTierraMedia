<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body>

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
								Atracciones</a>
						
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/tierraMedia/logout">Logout</a></li>
					</ul>
				</div>

			</nav>
		</div>

	</header>
	
	<main class="container" style="margin-bottom: 50px">
		<div class="bg-light p-4 rounded d-flex flex-wrap flex-column  align-items-center">
			<h2>¡La aventura te espera  
				<c:out value="${usuario.nombre}!" />
			</h2>
			<h6>
				Tiempo disponible: <c:out value="${usuario.tiempoDisponible}" />
				Dinero disponible: <c:out value="${usuario.dineroDisponible}" />
			</h6>
			
		</div>
	</main>

	<!-- SLIDER -->
	<div class="container">
		<div class="row">
			<div class="col_sm_12">
				<div id="carouselExampleCaptions" class="carousel slide"
					data-bs-ride="carousel">
					
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="assets/img/02.jpg" class="d-block w-100" alt="..."
								width="620px" height="450px">

							<div class="carousel-caption d-none d-md-block">
								<h2>¡Aprovecha nuestras promociones! </h2>
								
							</div>
						</div>
						
			
						
						<c:forEach items="${atracciones}" var="atracciones">
										
						<div class="carousel-item">
							<img src="${atracciones.getImagen()}" class="d-block w-100" width="620px" height="450px">
							<div class="carousel-caption d-none d-md-block">
								<h2><c:out value="${atracciones.getNombre()}"></c:out></h2>
								<form action="atracciones/index.do" method="get">
									<input type="hidden" name="nombre" value="${atracciones.getNombre()}"> 
									<input  class="btn btn-primary btn-lg"  style="display: block; margin: 0 auto;" type="submit" value="informacion">
								</form>
							</div>
							
						</div>
						
						</c:forEach>	
						
						
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</div>
	</div>


<div class="col-lg-8 mx-auto p-3 py-md-5">
		<div class="d-flex flex-wrap justify-content-around">
	
			<c:forEach items="${atracciones}" var="atracciones">
			<c:if test="${usuario.estaAtraccionMegusta(atracciones)&&!usuario.atraccionYaComprada(atracciones)&&usuario.puedoPagar(atracciones)&&usuario.tengoTiempo(atracciones)&&atracciones.tieneCupo()}">
				<div class="card  align-self-center" style="margin-bottom: 30px; ">
					<form action="atracciones/index.do" method="get">
						
						<input type="hidden" name="nombre" value="${atracciones.getNombre()}"> 
						<img class="card-img-top" src="${atracciones.getImagen()}"	alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title" style="text-align:center" >
								<c:out value="${atracciones.getNombre()}" />
								$<c:out value="${atracciones.getCosto()}" />
							</h5>
							<input  class="btn btn-primary btn-lg"  style="display: block; margin: 0 auto;" type="submit" value="informacion">
						</div>
					</form>
				</div>
				</c:if>
			</c:forEach>
		</div>
		
		<div class="d-flex flex-wrap justify-content-around">
	
			<c:forEach items="${atracciones}" var="atracciones">
			<c:if test="${!usuario.estaAtraccionMegusta(atracciones)&&!usuario.atraccionYaComprada(atracciones)&&usuario.puedoPagar(atracciones)&&usuario.tengoTiempo(atracciones)&&atracciones.tieneCupo()}">
				<div class="card  align-self-center" style="margin-bottom: 30px; ">
					<form action="atracciones/index.do" method="get">
						<input type="hidden" name="id" value="${atracciones.getId()}">
						<input type="hidden" name="user" value="${usuario.getNombre()}">
						<input type="hidden" name="nombre" value="${atracciones.getNombre()}"> 
						<img class="card-img-top" src="${atracciones.getImagen()}"	alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title" style="text-align:center" >
								<c:out value="${atracciones.getNombre()}" />
								$<c:out value="${atracciones.getCosto()}" />
							</h5>
							<input  class="btn btn-primary btn-lg"  style="display: block; margin: 0 auto;" type="submit" value="informacion">
						</div>
					</form>
				</div>
				</c:if>
			</c:forEach>
		</div>
</div>
	
</body>
<jsp:include page="/partials/footer.jsp"></jsp:include>

</html>
