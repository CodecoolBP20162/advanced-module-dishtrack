package com.codecool.dishtrack.domain.service;

import com.codecool.dishtrack.model.Product;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class ProductService extends AbstractFacade<Product> {

    @PersistenceContext(unitName = "jpaexamplePU")
    private EntityManager em;

    public ProductService() {
        super(Product.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

}
