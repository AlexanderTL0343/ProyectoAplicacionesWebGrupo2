
package com.proyectoWeb.service;

import com.proyectoWeb.domain.Categoria;
import java.util.List;


public interface CategoriaService {
    public List<Categoria>getCategorias();

    public Categoria getCategoria(Categoria categoria);
}
