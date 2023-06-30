<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PruebaKCRM - Inicio</title>
</head>
<body>
    <h1>Bienvenido a PruebaKCRM</h1>
    <p>Esta es la página de inicio de la aplicación.</p>
    <p>Seleccione una opción del menú de navegación para continuar.</p>
    <ul>
        <li><a href="<c:url value="/empleados"/>">Gestionar Empleados</a></li>
        <li><a href="<c:url value="/solicitudes"/>">Gestionar Solicitudes</a></li>
    </ul>
</body>
</html>

