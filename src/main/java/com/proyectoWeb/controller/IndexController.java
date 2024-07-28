
package com.proyectoWeb.controller;

import com.proyectoWeb.service.OfertaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class IndexController {
    
    
    @Autowired
    private OfertaService ofertaService;
    
    @GetMapping("/")
    public String inicio(Model model){
        var lista = ofertaService.getOfertas();
        model.addAttribute("ofertas", lista);
        model.addAttribute("totalOfertas", lista.size());
        return "index";
    }
    
}
