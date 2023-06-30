
package com.prueba.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Solicitud {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String codigo;
    private String descripcion;
    private String resumen;

    @ManyToOne
    @JoinColumn(name = "id_empleado")
    private Empleado empleado;

    // Constructores, getters y setters

    public Solicitud() {
    }

    public Solicitud(String codigo, String descripcion, String resumen, Empleado empleado) {
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.resumen = resumen;
        this.empleado = empleado;
    }

    // Getter y Setter para id

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    // Getters y Setters para los demás atributos

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getResumen() {
        return resumen;
    }

    public void setResumen(String resumen) {
        this.resumen = resumen;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
}
