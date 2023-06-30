package com.prueba.controller;

import com.prueba.model.Empleado;
import com.prueba.repository.EmpleadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/empleados")
public class EmpleadoController {

    private final EmpleadoRepository empleadoRepository;

    @Autowired
    public EmpleadoController(EmpleadoRepository empleadoRepository) {
        this.empleadoRepository = empleadoRepository;
    }

    @GetMapping
    public String listarEmpleados(Model model) {
        List<Empleado> empleados = empleadoRepository.findAll();
        model.addAttribute("empleados", empleados);
        return "listarEmpleados";
    }

    @GetMapping("/nuevo")
    public String mostrarFormularioNuevo(Model model) {
        model.addAttribute("empleado", new Empleado());
        return "formularioEmpleado";
    }

    @PostMapping("/nuevo")
    public String guardarEmpleado(@ModelAttribute("empleado") Empleado empleado) {
        empleadoRepository.save(empleado);
        return "redirect:/empleados";
    }

    @GetMapping("/{id}")
    public String mostrarDetalleEmpleado(@PathVariable Long id, Model model) {
        Empleado empleado = empleadoRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Empleado no encontrado con el ID proporcionado: " + id));
        model.addAttribute("empleado", empleado);
        return "detalleEmpleado";
    }

    // Otros métodos del controlador

}
