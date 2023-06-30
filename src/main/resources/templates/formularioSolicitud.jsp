<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario Solicitud</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/styles.css">
</head>
<body>
    <h1>Formulario Solicitud</h1>
    <form action="${pageContext.request.contextPath}/guardarSolicitud" method="POST">
        <label for="codigo">Código:</label>
        <input type="text" id="codigo" name="codigo" required><br>
        
        <label for="descripcion">Descripción:</label>
        <input type="text" id="descripcion" name="descripcion" required><br>
        
        <label for="resumen">Resumen:</label>
        <input type="text" id="resumen" name="resumen" required><br>
        
        <label for="idEmpleado">ID Empleado:</label>
        <input type="text" id="idEmpleado" name="idEmpleado" required><br>
        
        <input type="submit" value="Guardar">
    </form>
</body>
</html>
