// Todos estos paquetes como dao, domain o service 
// es para poder ordenar el sql 

package com.proyectoWeb.service;

import com.proyectoWeb.domain.Promocion;
import java.util.List;

public interface PromocionService {
    
    // Se recupera la lista de promocions 
    //de la tabla promocion dentro de un arrayList
    // Solo las activas o todas...
    public List<Promocion> getPromociones();
    
    
    // Se obtiene un registro de promocions en un 
    // objeto de tipo promocion
    // Si el idPromocion existe si no existe es nulo.
    public Promocion getpromocion(Promocion promocion);
    
    // Se crea un nuevo registro en la tabla promocion,
    // si el obbjeto Promocion NO tiene idPromocion
    // Se actualiza el regitro en la tabla promocion,
    // Si el objeto Promocion tiene un idPromocion  
    public void save(Promocion promocion);
    
    // Se elimina el registro en la tabla promocion si 
    // el idPromocion existe en la tabla
    public void delete(Promocion promocion);
    
    
}
