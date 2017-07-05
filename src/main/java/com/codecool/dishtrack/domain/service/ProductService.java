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

   /* @Override
    public List<Product> findAll() {

        List<Product> allProducts = em.createNamedQuery("Product.findAll", Product.class).getResultList();
        return allProducts;
    }*/
}
/*        Restaurant restaurant1 = new Restaurant("rest1");
        Allergen gluten = new Allergen("gluten");
        Allergen milk = new Allergen("milk");
        Ingredient chicken = new Ingredient("chicken");
        Set<Allergen> allergens1 = new HashSet<>(Arrays.asList(gluten, milk));
        Set<Allergen> allergens2 = new HashSet<>(Arrays.asList(milk));
        Set<Ingredient> ingredients1 = new HashSet<>(Arrays.asList(chicken));
        Product alma = new Product("Alma", "description1", ingredients1, "pic1.jpg", allergens1, Category.FOOD, restaurant1);
        Product eper = new Product("Eper", "description2",  ingredients1, "pic2.jpg", allergens2, Category.DESSERT, restaurant1);

        return Arrays.asList(alma, eper);
            }*/

