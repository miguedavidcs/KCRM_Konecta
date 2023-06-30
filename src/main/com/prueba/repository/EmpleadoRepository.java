package com.prueba.repository;

import com.example.model.Empleado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmpleadoRepository extends JpaRepository<Empleado, Long> {

    List<Empleado> findByNombre(String nombre);

    List<Empleado> findBySalarioGreaterThan(double salario);

    List<Empleado> findByFechaIngresoBetween(String fechaInicio, String fechaFin);

    

}

