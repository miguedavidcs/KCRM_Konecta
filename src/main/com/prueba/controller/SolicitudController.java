package com.prueba.controller;

import com.prueba.model.Empleado;
import com.prueba.model.Solicitud;
import com.prueba.repository.EmpleadoRepository;
import com.prueba.repository.SolicitudRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/solicitudes")
public class SolicitudController {

    private final SolicitudRepository solicitudRepository;
    private final EmpleadoRepository empleadoRepository;

    @Autowired
    public SolicitudController(SolicitudRepository solicitudRepository, EmpleadoRepository empleadoRepository) {
        this.solicitudRepository = solicitudRepository;
        this.empleadoRepository = empleadoRepository;
    }

    @GetMapping
    public String listarSolicitudes(Model model) {
        List<Solicitud> solicitudes = solicitudRepository.findAll();
        model.addAttribute("solicitudes", solicitudes);
        return "listarSolicitudes";
    }

    @GetMapping("/nuevo")
    public String mostrarFormularioNuevo(Model model) {
        List<Empleado> empleados = empleadoRepository.findAll();
        model.addAttribute("solicitud", new Solicitud());
        model.addAttribute("empleados", empleados);
        return "formularioSolicitud";
    }

    @PostMapping("/nuevo")
    public String guardarSolicitud(@ModelAttribute("solicitud") Solicitud solicitud) {
        solicitudRepository.save(solicitud);
        return "redirect:/solicitudes";
    }

    @GetMapping("/{id}")
    public String mostrarDetalleSolicitud(@PathVariable Long id, Model model) {
        Solicitud solicitud = solicitudRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Solicitud no encontrada con el ID proporcionado: " + id));
        Empleado empleado = empleadoRepository.findById(solicitud.getEmpleado().getId())
                .orElseThrow(() -> new IllegalArgumentException("Empleado no encontrado con el ID asociado a la solicitud: " + id));
        model.addAttribute("solicitud", solicitud);
        model.addAttribute("empleado", empleado);
        return "detalleSolicitud";
    }

    // Otros métodos del controlador

}

