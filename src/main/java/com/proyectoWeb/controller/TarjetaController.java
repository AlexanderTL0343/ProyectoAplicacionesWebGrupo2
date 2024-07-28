

package com.proyectoWeb.controller;



import com.proyectoWeb.domain.Tarjeta;
import com.proyectoWeb.service.FireBaseStorageService;
import com.proyectoWeb.service.TarjetaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tarjeta")
public class TarjetaController {
    
    
     @Autowired
    private TarjetaService tarjetaService;

    // Mapea la ruta que se quiera utilizar
    @GetMapping("/listado")
    public String listado(Model model) {

        var lista = tarjetaService.getTarjetas();
        model.addAttribute("tarjetas", lista);
        model.addAttribute("totalTarjetas", lista.size());
        // Puedo pasar informacion al html listado
        // Este busca un paquete tarjeta con un html listado en OTHER SOURCES del codigo
        return "/tarjeta/listado";
    }
    // para poder crear una unica copia del metodo
    @Autowired
    private FireBaseStorageService firebaseStorageService;

    // Metodo para agregar una nueva tarjeta
    @PostMapping("/guardar")
    public String guardar(Tarjeta tarjeta) {
        tarjetaService.save(tarjeta);

        // Vata y ejecute el metodo listado de esta misma clase
        return "redirect:/tarjeta/listado";

    }
   
    
}
