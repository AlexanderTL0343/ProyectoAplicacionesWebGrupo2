package com.proyectoWeb.service.impl;

import com.proyectoWeb.domain.Oferta;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.proyectoWeb.dao.OfertaDao;
import com.proyectoWeb.service.OfertaService;

@Service
public class OfertaServiceImpl
        implements OfertaService {

    // El autowired es para que se cree automaticamente un objeto
    // y solo uno va a existir
    @Autowired
    private OfertaDao ofertaDao;

    
    @Transactional(readOnly = true)
    @Override
    public List<Oferta> getOfertas() {
        var lista = ofertaDao.findAll();

        return lista;

    }

    @Override
    @Transactional(readOnly = true)
    public Oferta getoferta(Oferta oferta) {
        // Esta logica encuentra el oferta pero si no lo hace devuelve nulo en el .orElse
        return ofertaDao.findById(oferta.getIdOferta()).orElse(null);

    }

    @Override
    @Transactional
    public void save(Oferta oferta) {
        ofertaDao.save(oferta);
    }

    @Override
    @Transactional
    public void delete(Oferta oferta) {
        ofertaDao.delete(oferta);
    }


}
