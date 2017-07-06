package com.codecool.dishtrack.domain.service;

import com.codecool.dishtrack.model.Ingredient;
import com.codecool.dishtrack.model.Order;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class OrderService extends AbstractFacade<Order> {

    @PersistenceContext(unitName = "jpaexamplePU")
    private EntityManager em;

    public OrderService() {
        super(Order.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
}

