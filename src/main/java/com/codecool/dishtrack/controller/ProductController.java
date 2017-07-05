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

    public List<Product> getProducts() {
        return productService.findAll();
    }

}
