package com.codecool.dishtrack.model;

import com.codecool.dishtrack.domain.service.ProductService;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by kata on 2017.07.04..
 */
public class RandomDataPopulator {

    public static void main(String... args) {
        Restaurant restaurant1 = new Restaurant("rest1");
        Allergen gluten = new Allergen("gluten");
        Allergen milk = new Allergen("milk");
        Ingredient chicken = new Ingredient("chicken");
        Set<Allergen> allergens1 = new HashSet<>(Arrays.asList(gluten, milk));
        Set<Allergen> allergens2 = new HashSet<>(Arrays.asList(milk));
        Set<Ingredient> ingredients1 = new HashSet<>(Arrays.asList(chicken));
        Product alma = new Product("Alma", "description1", ingredients1, "pic1.jpg", allergens1, Category.FOOD, restaurant1);
        Product eper = new Product("Eper", "description2",  ingredients1, "pic2.jpg", allergens2, Category.DESSERT, restaurant1);


        ProductService ps = new ProductService();
        ps.create(alma);
        ps.create(eper);

    }

}
