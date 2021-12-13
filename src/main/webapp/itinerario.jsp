<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
<link rel="stylesheet"
	href="/tierraMedia/assets/stylesheets/estilos.css">
<link rel="stylesheet"
	href="/tierraMedia/assets/stylesheets/estilosPunto7.css">


</head>


<body>
	<header class="container-fluid header p-3">
		<jsp:include page="/partials/navUsuario.jsp"></jsp:include>
	</header>

	<div class="separador p-2"></div>

	
		<div class="container-fluid">
			<div class="row-fluid">
				<h1>Itinerario</h1>
			</div>

			<c:choose>
				<c:when test="${itinerario != null }">
					<p>Estos son los productos comprados hasta el momento.</p>
				</c:when>
				<c:otherwise>
					<p>Aún no se han registrado compras</p>
				</c:otherwise>
			</c:choose>


			<c:forEach items="${itinerario}" var="producto">
				<div class="row-fluid">
					<div class="span3 tiny">
						<div class="pricing-table-header-tiny">
							<h2>
								<c:out value="${producto.nombre }"></c:out>
							</h2>
						</div>
						<div class="pricing-table-features">
							<p>
								<strong>Duración</strong>
								<c:out value="${ producto.tiempo }"></c:out>
							</p>
							<p>
								<strong>Descripción</strong>
								<c:out value="${ producto.descripcion }"></c:out>
							</p>

						</div>
						
						<div class="pricing-table-signup-tiny">
							<figure>
								<img class="img-fluid ubicacion-imagen rounded-circle"
									src="<c:out value="${producto.imagen }"></c:out>" 
									alt="Imagen de <c:out value="${producto.nombre }"></c:out>"/>
							</figure>
							
						</div>
					</div>
				</div>
			</c:forEach>

		</div>


	<footer>
		<jsp:include page="/partials/footer.jsp"></jsp:include>
	</footer>
</body>
</html>