<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head2.jsp"></jsp:include>
</head>
<body class="text-white bg-dark">
	<jsp:include page="/partials/admin/nav.jsp"></jsp:include>
	<form action="/tierraMedia/admin/add/usuario/index.ad" method="post">
		<div class="form-group mb-3">
			<label for="id">ID:</label> <input class="form-control" id="id"
				type="text" name="id" required/>
		</div>

		<div class="form-group mb-3">
			<label for="nombre">Nombre:</label> <input class="form-control"
				id="nombre" type="text" name="nombre" required/>
		</div>

		<div class="form-group mb-3">
			<label for="dineroDisponible">Dinero disponible:</label> <input
				class="form-control" id="dineroDisponible" type="number"
				name="dineroDisponible" required/>
		</div>
		<div class="form-group mb-3">
			<label for="tiempoDisponible">Tiempo disponible:</label> <input
				class="form-control" id="tiempoDisponible" type="number"
				name="tiempoDisponible" required/>
		</div>
		<div class="form-group mb-3">
			<label for="nombre">Tipo de atracción preferida: </label> <select
				class="form-select" aria-label="Default select example" name="tipo" required>
				<option selected disabled value="">Elija un tipo de atracción...</option>
				<option value="Aventura">Aventura</option>
				<option value="Paisaje">Paisaje</option>
				<option value="Degustación">Degustación</option>
			</select>
		</div>

		<div class="form-group mb-3">
			<label for="password">Contraseña:</label> <input class="form-control"
				id="password" type="text" name="password" required/>
		</div>
		<div class="form-group mb-3">
			<label for="nombre">Tipo de usuario: </label> <select
				class="form-select" aria-label="Default select example" name="admin" required>
				<option selected disabled value="">Elija un tipo de usuario...</option>
				<option value="1">Administrador</option>
				<option value="0">Usuario</option>
			</select>
		</div> <br>

		<button type="submit" class="btn btn-warning">Agregar</button>
	</form>
</body>
</html>