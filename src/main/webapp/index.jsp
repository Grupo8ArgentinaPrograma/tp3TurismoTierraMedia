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
				!
				
				<h6>
				Tiempo disponible: <c:out value="${usuario.tiempoDisponible}" />
				Dinero disponible: <c:out value="${usuario.dineroDisponible}" />
				</h6>
			</h2>
		</div>
	</main>
	
	<jsp:include page="presentacion.jsp"></jsp:include>

</body>
</html>
