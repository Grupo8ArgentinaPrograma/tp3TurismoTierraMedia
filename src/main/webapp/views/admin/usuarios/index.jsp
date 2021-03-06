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
	<table class="table table-dark">
		<thead>
			<tr>
				<th>ID</th>
				<th>Nombre</th>
				<th>Contraseña</th>
				<th>Dinero disponible</th>
				<th>Tiempo disponible</th>
				<th>Tipo preferido</th>
				<th>Tipo de usuario</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td><c:out value="${usuario.id}"></c:out></td>
					<td><strong><c:out value="${usuario.nombre}"></c:out></strong></td>
					<td><c:out value="${usuario.password}"></c:out></td>
					<td><c:out value="${usuario.dineroDisponible}"></c:out>
						monedas</td>
					<td><c:out value="${usuario.tiempoDisponible}"></c:out> hs</td>
					<td><c:out value="${usuario.tipoPreferido}"></c:out></td>
					<td>
					<c:choose>
						<c:when test="${usuario.admin == 1}">
    						Administrador
  						</c:when>
  						<c:when test="${usuario.admin == 0}">
    						Usuario
  						</c:when>
					</c:choose>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>