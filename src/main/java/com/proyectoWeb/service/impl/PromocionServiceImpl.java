package com.proyectoWeb.service.impl;

import com.proyectoWeb.domain.Promocion;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.proyectoWeb.dao.PromocionDao;
import com.proyectoWeb.service.PromocionService;

@Service
public class PromocionServiceImpl
        implements PromocionService {

    // El autowired es para que se cree automaticamente un objeto
    // y solo uno va a existir
    @Autowired
    private PromocionDao promocionDao;

    
    @Transactional(readOnly = true)
    @Override
    public List<Promocion> getPromociones() {
        var lista = promocionDao.findAll();

        return lista;

    }

    @Override
    @Transactional(readOnly = true)
    public Promocion getpromocion(Promocion promocion) {
        // Esta logica encuentra el promocion pero si no lo hace devuelve nulo en el .orElse
        return promocionDao.findById(promocion.getIdPromocion()).orElse(null);

    }

    @Override
    @Transactional
    public void save(Promocion promocion) {
        promocionDao.save(promocion);
    }

    @Override
    @Transactional
    public void delete(Promocion promocion) {
        promocionDao.delete(promocion);
    }


}
