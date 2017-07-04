package com.codecool.dishtrack.controller;

import com.codecool.dishtrack.domain.service.ProductService;
import com.codecool.dishtrack.model.Product;

import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.inject.Named;
import java.util.List;

@Named
@RequestScoped
public class ProductController {

    @EJB
    private ProductService productService;

    public List<Product> getProducts() {
        return productService.findAll();
    }

}
