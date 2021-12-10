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
	<form action="/tierraMedia/admin/edit/atraccion/index.do" method="post">
		<div class="form-group mb-3">
			<label for="nombre">Atracción: </label> <select
				class="form-select" aria-label="Default select example" name="nombre">
				<option selected>Elija una atraccion</option>
				<c:forEach items="${atracciones}" var="atraccion">
					<option value="${atraccion.nombre}"><c:out
							value="${atraccion.nombre}"></c:out></option>
				</c:forEach>
			</select>
		</div>

		<div class="form-group mb-3">
			<label for="costo">Costo:</label> <input class="form-control"
				id="costo" type="text" name="costo" required"/>
		</div>
		<div class="form-group mb-3">
			<label for="tiempo">Duración:</label> <input class="form-control"
				id="tiempo" type="text" name="tiempo" required"/>
		</div>
		<div class="form-group mb-3">
			<label for="cupo">Cupo:</label> <input class="form-control"
				id="cupo" type="text" name="cupo" required"/>
		</div>
		
		<button type="submit" class="btn btn-warning">Enviar</button>
	</form>
</body>
</html>