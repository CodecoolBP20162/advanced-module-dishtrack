package com.codecool.dishtrack.domain.service;

import com.codecool.dishtrack.model.Allergen;
import com.codecool.dishtrack.model.Ingredient;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class IngredientService extends AbstractFacade<Ingredient> {

    @PersistenceContext(unitName = "jpaexamplePU")
    private EntityManager em;

    public IngredientService() {
        super(Ingredient.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
}


