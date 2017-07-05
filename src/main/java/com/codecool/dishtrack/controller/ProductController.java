package com.codecool.dishtrack.controller;

import com.codecool.dishtrack.domain.service.AllergenService;
import com.codecool.dishtrack.domain.service.IngredientService;
import com.codecool.dishtrack.domain.service.ProductService;
import com.codecool.dishtrack.domain.service.RestaurantService;
import com.codecool.dishtrack.model.*;

import javax.ejb.EJB;
import javax.ejb.Singleton;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.context.RequestScoped;
import javax.inject.Named;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Named
@Singleton
public class ProductController {


    @EJB
    private ProductService productService;

    @EJB
    private RestaurantService restaurantService;

    @EJB
    private IngredientService ingredientService;

    @EJB
    private AllergenService allergenService;

    int i;

    public List<Product> getProducts() {
        Restaurant restaurant1 = new Restaurant("rest1"+i++);
        Allergen gluten = new Allergen("gluten");
        Allergen milk = new Allergen("milk");
        Ingredient chicken = new Ingredient("chicken");
        Set<Allergen> allergens1 = new HashSet<>(Arrays.asList(gluten, milk));
        Set<Ingredient> ingredients1 = new HashSet<>(Arrays.asList(chicken));
        Product alma = new Product("Alma"+i, "description1", ingredients1, "pic1.jpg", allergens1, Category.FOOD, restaurant1);

        restaurantService.create(restaurant1);
        allergenService.create(gluten);
        allergenService.create(milk);
        ingredientService.create(chicken);
        productService.create(alma);

        return productService.findAll();
    }

}
