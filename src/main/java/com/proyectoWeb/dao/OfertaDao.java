package com.proyectoWeb.dao;

import com.proyectoWeb.domain.Oferta;
import org.springframework.data.jpa.repository.JpaRepository;
// Nos va a permitir hacer los select, delete, insert y create de manera automatica
public interface OfertaDao 
        extends JpaRepository<Oferta, Long>
{

}
