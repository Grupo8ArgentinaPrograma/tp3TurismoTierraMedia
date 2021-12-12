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
				<th>Atracción</th>
				<th>Tipo de atracción</th>
				<th>Costo</th>
				<th>Duración</th>
				<th>Cupo</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${promociones}" var="promocion">
					<tr>
						<td><strong><c:out value="${atraccion.nombre}"></c:out></strong>
							<p><c:out value="${atraccion.descripcion}"></c:out></p></td>
						<td><c:out value="${atraccion.tipo}"></c:out></td>
						<td><c:out value="${atraccion.costo}"></c:out> monedas</td>
						<td><c:out value="${atraccion.tiempo}"></c:out> hs</td>
						<td><c:out value="${atraccion.cupo}"></c:out></td>
					</tr>
				</c:forEach>
		</tbody>
	</table>

</body>
</html>