<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>
<jsp:include page="partials/head.jsp"></jsp:include>
</head>
<body>

	<header class="container-fluid header p-3">
		<div class="separador p-2"></div>
		<jsp:include page="partials/navUsuario.jsp"></jsp:include>
	</header>

	<main class="container">
		<div class="bg-light p-4 rounded">
			<h2>
				¡La aventura te espera  
				<c:out value="${usuario.nombre}" />

				<h6>
					Tiempo disponible: <c:out value="${usuario.tiempoDisponible}" />
					Dinero disponible: <c:out value="${usuario.dineroDisponible}" />
				</h6>
			</h2>
		</div>
	</main>

<form action="atracciones/index.do" method="get">
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
								<h5>Aprovechá estas Oferta</h5>
							</div>
						</div>
						
					<c:forEach items="${atracciones}" var="atracciones">
						
							<input type="hidden" name="nombre" value="${atracciones.getNombre()}"> 
						<div class="carousel-item">
							<img src="${atracciones.getImagen()}" class="d-block w-100" alt="..."
								width="620px" height="450px">
							<div class="carousel-caption d-none d-md-block">
								<h5><c:out value="${atracciones.getNombre()}"></c:out></h5>
								<p>Some representative placeholder content for the second
									slide.</p>
						<input  class="btn btn-primary btn-lg"  style="display: block; margin: 0 auto;" type="submit" value="informacion">
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
</form>


	<div class="d-flex flex-wrap justify-content-around">

		<c:forEach items="${atracciones}" var="atracciones">
		<c:if test="${usuario.estaAtraccionMegusta(atracciones)}">
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
		<c:if test="${!usuario.estaAtraccionMegusta(atracciones)}">
			<div class="card  align-self-center" style="margin-bottom: 30px;">
				<form action="atracciones/index.do" method="get">
					
					<input type="hidden" name="nombre" value="${atracciones.getNombre()}"> 
					<img class="card-img-top" src="${atracciones.getImagen()}"	alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title" style="text-align:center" >
							<c:out value="${atracciones.getNombre()}" />
							<c:out value="${atracciones.getCosto()}" />
						</h5>
						<input  class="btn btn-primary btn-lg"  style="display: block; margin: 0 auto;" type="submit" value="informacion">
					</div>
				</form>
			</div>
			</c:if>
		</c:forEach>
	</div>
</body>
</html>
