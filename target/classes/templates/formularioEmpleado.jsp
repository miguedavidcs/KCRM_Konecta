<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario Empleado</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/styles.css">
</head>
<body>
    <h1>Formulario Empleado</h1>
    <form action="${pageContext.request.contextPath}/guardarEmpleado" method="POST">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br>
        
        <label for="fechaIngreso">Fecha de Ingreso:</label>
        <input type="date" id="fechaIngreso" name="fechaIngreso" required><br>
        
        <label for="salario">Salario:</label>
        <input type="number" id="salario" name="salario" required><br>
        
        <input type="submit" value="Guardar">
    </form>
</body>
</html>
