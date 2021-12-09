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
	<select class="form-select" aria-label="Default select example">
		<option selected>Elija una atraccion</option>
		<c:forEach items="${atracciones}" var="atraccion">
			<option value="${atraccion.nombre}"><c:out value="${atraccion.nombre}"></c:out></option>
		</c:forEach>
	</select>
</body>
</html>