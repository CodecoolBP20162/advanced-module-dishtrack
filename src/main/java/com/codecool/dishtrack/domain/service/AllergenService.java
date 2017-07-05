package com.codecool.dishtrack.domain.service;

import com.codecool.dishtrack.model.Allergen;
import com.codecool.dishtrack.model.Product;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class AllergenService extends AbstractFacade<Allergen> {

    @PersistenceContext(unitName = "jpaexamplePU")
    private EntityManager em;

    public AllergenService() {
        super(Allergen.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
}


