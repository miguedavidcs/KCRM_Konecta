package com.example.repository;

import com.example.model.Solicitud;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SolicitudRepository extends JpaRepository<Solicitud, Long> {

    List<Solicitud> findByEmpleado_Nombre(String nombre);

    List<Solicitud> findByCodigoContaining(String codigo);

    List<Solicitud> findByDescripcionIgnoreCase(String descripcion);

  
}
