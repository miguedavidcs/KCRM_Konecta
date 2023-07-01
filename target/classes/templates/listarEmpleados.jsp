<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listar Empleados</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/styles.css">
</head>
<body>
	<h1>Listar Empleados</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>Fecha de Ingreso</th>
			<th>Salario</th>
		</tr>
		<c:forEach var="empleado" items="${empleados}">
		<tr>
			<td>${empleado.id}</td>
			<td>${empleado.nombre}</td>
			<td>${empleado.fechaIngreso}</td>
			<td>${empleado.salario}</td>
		</tr>
		</c:forEach>
	</table>

	<a href="${pageContext.request.contextPath}/formularioEmpleado">
	Agregar</a>
</body>
</html>
