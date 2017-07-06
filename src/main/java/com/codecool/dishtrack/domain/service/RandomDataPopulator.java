package com.codecool.dishtrack.domain.service;

import com.codecool.dishtrack.domain.service.AllergenService;
import com.codecool.dishtrack.domain.service.IngredientService;
import com.codecool.dishtrack.domain.service.ProductService;
import com.codecool.dishtrack.domain.service.RestaurantService;
import com.codecool.dishtrack.model.*;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.ejb.Singleton;
import javax.ejb.Startup;
import javax.inject.Named;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by kata on 2017.07.04..
 */

@Named
@Startup
@Singleton
public class RandomDataPopulator {

    @EJB
    ProductService productService;

    @EJB
    RestaurantService restaurantService;

    @EJB
    AllergenService allergenService;

    @EJB
    IngredientService ingredientService;

    @EJB
    UserService userService;

    @EJB
    OrderService orderService;

    @PostConstruct
    public void init (){
        Restaurant restaurant1 = new Restaurant("rest1");
        Allergen gluten = new Allergen("gluten");
        Allergen milk = new Allergen("milk");
        Ingredient chicken = new Ingredient("chicken");
        Set<Allergen> allergens1 = new HashSet<>(Arrays.asList(gluten, milk));
        Set<Allergen> allergens2 = new HashSet<>(Arrays.asList(milk));
        Set<Ingredient> ingredients1 = new HashSet<>(Arrays.asList(chicken));
        Product alma = new Product("Alma", "description1", ingredients1, "pic1.jpg", allergens1, Category.FOOD, restaurant1);
        Product eper = new Product("Eper", "description2",  ingredients1, "pic2.jpg", allergens2, Category.DESSERT, restaurant1);


        User user1 = new User("user1", "user1@gmail.com", "pw", "John", "Doe", "Nagymezo street 44", "Budapest", "1234", "01231256485");
        Order order1 = new Order("ordered", PaymentMethod.CASH, user1);


        restaurantService.create(restaurant1);
        allergenService.create(gluten);
        allergenService.create(milk);
        ingredientService.create(chicken);
        productService.create(alma);
        productService.create(eper);
        userService.create(user1);
        orderService.create(order1);

    }

}
