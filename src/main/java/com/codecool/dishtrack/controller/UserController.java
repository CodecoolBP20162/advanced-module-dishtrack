package com.codecool.dishtrack.controller;


import com.codecool.dishtrack.model.*;
import com.codecool.dishtrack.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@RequestMapping("/users")
@RestController
public class UserController {

    @Autowired
    RestaurantRepository restaurantRepository;

    @Autowired
    AllergenRepository allergenRepository;

    @Autowired
    IngredientRepository ingredientRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    OrderRepository orderRepository;

    @Autowired
    CartItemRepository cartItemRepository;

    @Autowired
    ShoppingCartRepository shoppingCartRepository;

    @Autowired
    ReviewRepository reviewRepository;


    @RequestMapping("/getusers")
    @ResponseBody
    Iterable<User> getUsers() {
        return userRepository.findAll();

    }

}