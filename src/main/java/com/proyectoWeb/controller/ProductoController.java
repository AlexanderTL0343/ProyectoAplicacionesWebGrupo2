
package com.proyectoWeb.controller;

import com.proyectoWeb.domain.Producto;
import com.proyectoWeb.service.CategoriaService;
import com.proyectoWeb.service.ProductoService;
import com.proyectoWeb.service.FireBaseStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/productos")
public class ProductoController {
    
    @Autowired
    private ProductoService productoService;
    
    @Autowired
    private CategoriaService categoriaService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var productos = productoService.getProductos();
        model.addAttribute("productos", productos);
        
        var categorias = categoriaService.getCategorias();
        model.addAttribute("categorias", categorias);
        
        return "/productos/listado";
    }
    
    @GetMapping("/Enlatados")
    public String enlatados(Model model){
        var productos = productoService.getProductos();
        model.addAttribute("productos", productos);
        
        var categorias = categoriaService.getCategorias();
        model.addAttribute("categorias", categorias);
        
        return "/productos/Enlatados";
    }
    
    @GetMapping("/Leguminosas")
    public String leguminosas(Model model){
        var productos = productoService.getProductos();
        model.addAttribute("productos", productos);
        
        var categorias = categoriaService.getCategorias();
        model.addAttribute("categorias", categorias);
        
        return "/productos/Leguminosas";
    }
    
    @GetMapping("/Panaderia")
    public String panaderia(Model model){
        var productos = productoService.getProductos();
        model.addAttribute("productos", productos);
        
        var categorias = categoriaService.getCategorias();
        model.addAttribute("categorias", categorias);
        
        return "/productos/Panaderia";
    }
    
    @Autowired
    private FireBaseStorageService firebaseStorageService;
}


    