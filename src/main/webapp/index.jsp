<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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


	<div class="d-flex flex-wrap justify-content-around">

		<c:forEach items="${atracciones}" var="atracciones">
			<div class="card  align-self-center" style="">
				<form action="atracciones/index.do" method="get">
					<input type="hidden" name="nombre" value="${atracciones.getNombre()}"> 
					<img class="card-img-top" src="${atracciones.getImagen()}"	alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title" style="text-align:center" >
							<c:out value="${atracciones.getNombre()}" />
						</h5>
						<input  class="btn btn-primary btn-lg"  style="display: block; margin: 0 auto;" type="submit" value="Submit">
					</div>
				</form>
			</div>
		</c:forEach>
	</div>

</body>
</html>
