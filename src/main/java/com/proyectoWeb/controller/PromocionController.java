package com.proyectoWeb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.proyectoWeb.service.PromocionService;
@Controller
@RequestMapping("/promocion")
public class PromocionController {

    @Autowired
    private PromocionService promocionService;

    // Mapea la ruta que se quiera utilizar
    @GetMapping("/listado")
    public String listado(Model model) {

        var lista = promocionService.getPromociones();
        model.addAttribute("promociones", lista);
        model.addAttribute("totalPromociones", lista.size());
        // Puedo pasar informacion al html listado
        // Este busca un paquete promocion con un html listado en OTHER SOURCES del codigo
        return "/promocion/listado";
    }
    
    
    
}
