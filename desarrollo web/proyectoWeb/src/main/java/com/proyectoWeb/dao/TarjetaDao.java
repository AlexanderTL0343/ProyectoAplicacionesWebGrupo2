package com.proyectoWeb.dao;

import com.proyectoWeb.domain.Tarjeta;
import org.springframework.data.jpa.repository.JpaRepository;
// Nos va a permitir hacer los select, delete, insert y create de manera automatica
public interface TarjetaDao 
        extends JpaRepository<Tarjeta, Long>
{

}
