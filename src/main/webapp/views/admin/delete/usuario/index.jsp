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
	<form action="/tierraMedia/admin/delete/usuario/index.do" method="post">
		<div class="form-group mb-3">
			<label for="nombre">Usuario: </label> <select
				class="form-select" aria-label="Default select example" name="nombre">
				<option selected>Elija un usuario a eliminar</option>
				<c:forEach items="${usuarios}" var="usuario">
					<option value="${usuario.nombre}"><c:out
							value="${usuario.nombre}"></c:out></option>
				</c:forEach>
			</select>
		</div>	
		<button type="submit" class="btn btn-warning">Eliminar</button>
	</form>
</body>
</html>