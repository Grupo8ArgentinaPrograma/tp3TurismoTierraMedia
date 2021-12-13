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
<div class="d-flex flex-column  align-items-center col-lg-5 mx-auto p-3 py-md-5" >
	
	<h1 class="card-title"><c:out value="${atracciones.getNombre()}"/> </h1>
	
	<img  src="${atracciones.getImagen()}" style="margin: 40px; width:100%; height: 100% " alt="Card image cap">
	
	<p class="card-text"><c:out value="${atracciones.getDescripcion()}"/></p>
	<h3>Costo recorrido</h3>
	<p class="card-text"><c:out value="${atracciones.getCosto()}"/></p>
	<h3>Tiempo recorrido</h3>
	<p class="card-text"><c:out value="${atracciones.getTiempoRecorrido()}"/></p>
	<h3>Tipo de recorrido</h3>
	<p class="card-text"><c:out value="${atracciones.getTipo()}"/></p>
	<h3 style="text-align: center;">Atracciones incluidas</h3>
</div>



<div class="col-lg-8 mx-auto p-3 py-md-5">
		<div class="d-flex flex-wrap justify-content-around">
	
			<c:forEach items="${atracciones.getItinerario()}" var="atraccion">
			
				<div class="card  align-self-center" style="margin-bottom: 30px; ">
					<form action="atracciones/index.do" method="get">
						
						<input type="hidden" name="nombre" value="${atraccion.getNombre()}"> 
						<img class="card-img-top" src="${atraccion.getImagen()}"	alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title" style="text-align:center" >
								<c:out value="${atraccion.getNombre()}" />
								
							</h5>
							
						</div>
					</form>
				</div>
				
			</c:forEach>
		</div>

<div >
		<form action="../promo/comprar.do" method="get">
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
<footer>
<jsp:include page="/partials/footer.jsp"></jsp:include>
</footer>
</html>