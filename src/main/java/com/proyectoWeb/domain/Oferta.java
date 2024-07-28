package com.proyectoWeb.domain;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="oferta")
public class Oferta {
    // Este atributo es para representar el auto incremento de los id
    private static final long serialVersionUID = 1L;
    
    // Este @id hace que el siguiente atributo de la linea siguiente
    // es el id de llave primaria. 
    @Id
    // Decir que tome que de manera igual a la base de datos,
    // Es decir que se va copiar el auto incremento de la base de datos
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_oferta")
    // En objetos hay mayusculas y en las bases de datos minusculas.
    private Long idOferta;
    private String titulo;
    private String rutaImagen;
    private String rutaImagenLink;
    
    
}
