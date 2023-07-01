<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle del Empleado</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/styles.css">
</head>
<body>
    <h1>Detalle del Empleado</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Fecha de Ingreso</th>
            <th>Salario</th>
        </tr>
        <tr>
            <td>${empleado.id}</td>
            <td>${empleado.nombre}</td>
            <td>${empleado.fechaIngreso}</td>
            <td>${empleado.salario}</td>
        </tr>
    </table>

    <a href="${pageContext.request.contextPath}/empleados">Volver</a>
</body>
</html>
