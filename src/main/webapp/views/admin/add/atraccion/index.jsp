<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body class="text-white bg-dark">
	<jsp:include page="/partials/admin/nav.jsp"></jsp:include>
	<c:if test="${atraccion != null && !atraccion.esValida()}">
		<div class="alert alert-danger">
			<p>Error.</p>
		</div>
	</c:if>
	<form action="/tierraMedia/admin/add/atraccion/index.do" method="post">
		<div class="form-group mb-3">
			<label for="id">ID:</label> <input class="form-control" id="id"
				type="number" name="id" required"/>
		</div>

		<div class="form-group mb-3">
			<label for="nombre">Nombre:</label> <input class="form-control"
				id="nombre" type="text" name="nombre" required"/>
		</div>

		<div class="form-group mb-3">
			<label for="costo">Costo:</label> <input class="form-control"
				id="number" type="text" name="costo" required"/>
		</div>
		<div class="form-group mb-3">
			<label for="tiempo">Duración:</label> <input class="form-control"
				id="tiempo" type="number" name="tiempo" required"/>
		</div>
		<div class="form-group mb-3">
			<label for="cupo">Cupo:</label> <input class="form-control" id="cupo"
				type="number" name="cupo" required"/>
		</div>
		<div class="form-group mb-3">
			<label for="nombre">Tipo de atracción preferida: </label> <select
				class="form-select" aria-label="Default select example" name="tipo">
				<option selected>Elija un tipo de atracción:</option>
				<option value="Aventura">Aventura</option>
				<option value="Paisaje">Paisaje</option>
				<option value="Degustación">Degustación</option>
			</select>
		</div>
		<div class="form-group mb-3">
			<label for="descripcion">Descripcion:</label> <input
				class="form-control" id="descripcion" type="text" name="descripcion" required"/>
		</div>

		<div class="form-group mb-3">
			<label for="imagen">Path de la imagen:</label> <input
				class="form-control" id="imagen" type="text" name="imagen" required"/>
		</div>

		<button type="submit" class="btn btn-warning">Agregar</button>
	</form>
</body>
</html>