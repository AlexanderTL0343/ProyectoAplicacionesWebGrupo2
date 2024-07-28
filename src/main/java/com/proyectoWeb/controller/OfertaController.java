package com.proyectoWeb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.proyectoWeb.service.OfertaService;
@Controller
@RequestMapping("/oferta")
public class OfertaController {

    @Autowired
    private OfertaService ofertaService;

    // Mapea la ruta que se quiera utilizar
    @GetMapping("/listado")
    public String listado(Model model) {

        var lista = ofertaService.getOfertas();
        model.addAttribute("ofertas", lista);
        model.addAttribute("totalOfertas", lista.size());
        // Puedo pasar informacion al html listado
        // Este busca un paquete oferta con un html listado en OTHER SOURCES del codigo
        return "/oferta/listado";
    }
    
    
    
}
