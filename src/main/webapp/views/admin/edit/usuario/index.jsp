<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/partials/admin/nav.jsp"></jsp:include>
	<form action="/tierraMedia/admin/edit/usuario/index.do" method="post">
		<div class="form-group mb-3">
			<label for="nombre">Usuario: </label> <select
				class="form-select" aria-label="Default select example" name="nombre">
				<option selected>Elija un usuario</option>
				<c:forEach items="${usuarios}" var="usuario">
					<option value="${usuario.nombre}"><c:out
							value="${usuario.nombre}"></c:out></option>
				</c:forEach>
			</select>
		</div>

		<div class="form-group mb-3">
			<label for="dineroDisponible">Dinero disponible:</label> <input class="form-control"
				id="dineroDisponible" type="text" name="dineroDisponible" required"/>
		</div>
		<div class="form-group mb-3">
			<label for="tiempoDisponible">Tiempo disponible:</label> <input class="form-control"
				id="tiempoDisponible" type="text" name="tiempoDisponible" required"/>
		</div>
		<div class="form-group mb-3">
			<label for="password">Contraseña:</label> <input class="form-control"
				id="password" type="text" name="password" required"/>
		</div>
		
		<button type="submit" class="btn btn-dark">Enviar</button>
	</form>
</body>
</html>