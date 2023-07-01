<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar Solicitudes</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/styles.css">
</head>
<body>
    <h1>Listar Solicitudes</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Código</th>
            <th>Descripción</th>
            <th>Resumen</th>
            <th>Empleado</th>
        </tr>
        <c:forEach var="solicitud" items="${solicitudes}">
            <tr>
                <td>${solicitud.id}</td>
                <td>${solicitud.codigo}</td>
                <td>${solicitud.descripcion}</td>
                <td>${solicitud.resumen}</td>
                <td>${solicitud.empleado.nombre}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
