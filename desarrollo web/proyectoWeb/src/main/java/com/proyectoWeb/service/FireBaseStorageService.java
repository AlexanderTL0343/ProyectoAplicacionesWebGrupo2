
package com.proyectoWeb.service;


import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

public interface FireBaseStorageService {
    // La carpeta es donde se quiere que se coloque la imagen.
    public String cargaImagen(MultipartFile archivoLocalCliente, String carpeta, Long id);

    //El BuketName es el <id_del_proyecto> + ".appspot.com"
    final String BucketName = "examen1-38a74.appspot.com";

    //Esta es la ruta básica de este proyecto Techshop
    final String rutaSuperiorStorage = "Examen1";

    //Ubicación donde se encuentra el archivo de configuración Json en other Sources.
    final String rutaJsonFile = "firebase";
    
    //El nombre del archivo Json
    final String archivoJsonFile = "examen1-38a74-firebase-adminsdk-qdrtm-6999f60016.json";
}
