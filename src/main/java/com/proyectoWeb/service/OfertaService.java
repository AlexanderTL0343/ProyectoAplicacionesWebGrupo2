// Todos estos paquetes como dao, domain o service 
// es para poder ordenar el sql 

package com.proyectoWeb.service;

import com.proyectoWeb.domain.Oferta;
import java.util.List;

public interface OfertaService {
    
    // Se recupera la lista de ofertas 
    //de la tabla oferta dentro de un arrayList
    // Solo las activas o todas...
    public List<Oferta> getOfertas();
    
    
    // Se obtiene un registro de ofertas en un 
    // objeto de tipo oferta
    // Si el idOferta existe si no existe es nulo.
    public Oferta getoferta(Oferta oferta);
    
    // Se crea un nuevo registro en la tabla oferta,
    // si el obbjeto Oferta NO tiene idOferta
    // Se actualiza el regitro en la tabla oferta,
    // Si el objeto Oferta tiene un idOferta  
    public void save(Oferta oferta);
    
    // Se elimina el registro en la tabla oferta si 
    // el idOferta existe en la tabla
    public void delete(Oferta oferta);
    
    
}
