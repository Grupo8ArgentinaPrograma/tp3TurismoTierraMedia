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
	<header class="container-fluid header p-3">
		<jsp:include page="partials/navUsuario.jsp"></jsp:include>
	</header>
	
	<div class="separador p-2"></div>


	<%-- <c:out value="Llegamos" />

	<c:out value="${flash}" /> --%>

	<jsp:useBean id="servicio" class="services.ServicioItinerario" />

	<%--<c:out value="${servicio.cuadrado(2)}">
	</c:out>--%>


	<%-- <c:out value="Itinerario" />
	<c:out value="${servicio.itinerario('Frodo')}">
	</c:out>--%>




	<%-- <c:if test="${flash != null }">
		<div class="alert alert-danger">
			<p>
				<c:out value="${flash}" />
			</p>
			p>
		</div>
	</c:if>--%>


	<div class="row">
		<c:forEach var="event" items="${allList}">
			<div class="col-md-4">
				<div class="card"></div>
			</div>
		</c:forEach>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<h1>Itinerario</h1>
			<p>%tiempo restante% y %dinero restante%</p>
		</div>


		<div class="row-fluid">
			<div class="span3 tiny">
				<div class="pricing-table-header-tiny">
					<h2>%ATRACCION%</h2>
				</div>
				<div class="pricing-table-features">
					<p>
						<strong>Duración</strong> %duracion%
					</p>
					<p>
						<strong>Tipo de Atracción</strong>%tipo atraccion%
					</p>
					<p>
						<strong>Promocion</strong> %promocion si existe%
					</p>
				</div>
				<div class="pricing-table-signup-tiny">
					<figure>
						<img class="img-fluid ubicacion-imagen rounded-circle"
							src="assets/img/06.jpeg" alt="Casita en Tierra Media">
					</figure>
				</div>
			</div>

			<div class="span3 tiny">
				<div class="pricing-table-header-tiny">
					<h2>%ATRACCION%</h2>
				</div>
				<div class="pricing-table-features">
					<p>
						<strong>Duración</strong> %duracion%
					</p>
					<p>
						<strong>Tipo de Atracción</strong>%tipo atraccion%
					</p>
					<p>
						<strong>Promocion</strong> %promocion si existe%
					</p>
				</div>
				<div class="pricing-table-signup-tiny">
					<figure>
						<img class="img-fluid ubicacion-imagen rounded-circle"
							src="assets/img/03.jpg" alt="Casita en Tierra Media">
					</figure>
				</div>
			</div>

			<div class="span3 tiny">
				<div class="pricing-table-header-tiny">
					<h2>%ATRACCION%</h2>
				</div>
				<div class="pricing-table-features">
					<p>
						<strong>Duración</strong> %duracion%
					</p>
					<p>
						<strong>Tipo de Atracción</strong>%tipo atraccion%
					</p>
					<p>
						<strong>Promocion</strong> %promocion si existe%
					</p>
				</div>
				<div class="pricing-table-signup-tiny">
					<figure>
						<img class="img-fluid ubicacion-imagen rounded-circle"
							src="assets/img/08.jpg" alt="Casita en Tierra Media">
					</figure>
				</div>
			</div>



			<div class="span3 tiny">
				<div class="pricing-table-header-tiny">
					<h2>%ATRACCION%</h2>
				</div>
				<div class="pricing-table-features">
					<p>
						<strong>Duración</strong> %duracion%
					</p>
					<p>
						<strong>Tipo de Atracción</strong>%tipo atraccion%
					</p>
					<p>
						<strong>Promocion</strong> %promocion si existe%
					</p>
				</div>
				<div class="pricing-table-signup-tiny">
					<figure>
						<img class="img-fluid ubicacion-imagen rounded-circle"
							src="assets/img/09.jpg" alt="Casita en Tierra Media">
					</figure>
				</div>
			</div>
		</div>

	</div>






	<jsp:include page="partials/footer.jsp"></jsp:include>
</body>
</html>