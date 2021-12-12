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
	<table class="table table-dark">
		<thead>
			<tr>
				<th>Tipo de promocion</th>
				<th>Nombre</th>
				<th>Descuento</th>
				<th>Atracciones incluidas</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${promociones}" var="promocion">
					<tr>
						<td><strong><c:out value="${promocion.nombre}"></c:out></strong></td>
						<td><c:out value="${promocion.descripcion}"></c:out></td>
						<td><c:out value="${promocion.descuento}"></c:out></td>
						<td><c:out value="${promocion.atraccionesIncluidas.toString()}"></c:out></td>
					</tr>
				</c:forEach>
		</tbody>
	</table>

</body>
</html>