package com.codecool.dishtrack.domain.service;

import com.codecool.dishtrack.model.Allergen;
import com.codecool.dishtrack.model.Restaurant;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class RestaurantService extends AbstractFacade<Restaurant> {

    @PersistenceContext(unitName = "jpaexamplePU")
    private EntityManager em;

    public RestaurantService() {
        super(Restaurant.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
}


