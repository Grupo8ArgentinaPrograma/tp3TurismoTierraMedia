<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background: red">
	<h1 class="card-title"><c:out value="${atracciones.getNombre()}"/> </h1>
	<img  src="../"+"${atracciones.getImagen()}" alt="Card image cap">
	<h5 class="card-title"><c:out value="${atracciones.getNombre()}"/> </h5>
	<p class="card-text"><c:out value="${atracciones.getDescripcion()}"/></p>
	<img class="card-img-top" src="TierraMedia2.jpg" alt="Card image cap">
					
</body>
</html>