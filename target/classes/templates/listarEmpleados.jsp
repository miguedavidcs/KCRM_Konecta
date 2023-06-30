<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<%
			for (com.prueba.model.Empleado empleado : empleados) {
		%>
		<tr>
			<td><%=empleado.getId()%></td>
			<td><%=empleado.getNombre()%></td>
			<td><%=empleado.getFechaIngreso()%></td>
			<td><%=empleado.getSalario()%></td>
		</tr>
		<%
			}
		%>
	</table>

	<a href="${pageContext.request.contextPath}/formularioEmpleado">
	Agregar</a>
</body>
</html>