package com.proyectoWeb.domain;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "usuario")
public class Usuario {

    // Este atributo es para representar el auto incremento de los id
    private static final long serialVersionUID = 1L;

    // Este @id hace que el siguiente atributo de la linea siguiente
    // es el id de llave primaria. 
    @Id
    // Decir que tome que de manera igual a la base de datos,
    // Es decir que se va copiar el auto incremento de la base de datos
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_usuario")
    // En objetos hay mayusculas y en las bases de datos minusculas.
    private Long idUsuario;
    // private Long idCategoria; No se usa por el @ManyToOne
    private String correo;
    private String contrasena;
    private String nombre;
    private String ciudad;
    private String pais;

    // Logica para represetar lo de muchos a uno
//    @ManyToOne
//    @JoinColumn(name = "id_tarjeta")
//    private Tarjeta tarjeta;
}
