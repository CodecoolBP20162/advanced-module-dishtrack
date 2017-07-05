package com.codecool.dishtrack.domain.service;

import com.codecool.dishtrack.model.*;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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