<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="partials/head.jsp"></jsp:include>



</head>

<body>
	<header class="container-fluid header p-3">
		<jsp:include page="partials/navLogin.jsp"></jsp:include>
	</header>


	<div class="col-lg-5 mx-auto p-3 py-md-5">

		<main>
			<h1>Turismo en la Tierra Media</h1>

			<c:if test="${flash != null }">
				<div class="alert alert-danger">
					<p>
						<c:out value="${flash}" />
					</p>
					p>
				</div>
			</c:if>

			<form action="login" method="post">
				<div class="mb-3">
					<label class="form-label" for="username">Usuario</label> <input
						class="form-control" name="username" />
				</div>
				<br>
				<div class="mb-3">
					<label class="form-label" for="password">Contraseña</label> <input
						class="form-control" type="password" name="password" />
				</div>
				<br>
				<div class="d-grid gap-2">
					<button type="submit" class="btn btn-ls btn-primary">Ingresar</button>
				</div>
			</form>
			<img class="card-img-top" src="assets/img/TierraMedia2.jpg" alt="Card image cap">
		</main>
	</div>
	<jsp:include page="partials/footer.jsp"></jsp:include>
</body>
</html>