package com.codecool.dishtrack.controller;

import com.codecool.dishtrack.domain.service.RestaurantService;
import com.codecool.dishtrack.model.Restaurant;

import javax.ejb.EJB;
import javax.ejb.Singleton;
import javax.inject.Named;
import java.util.List;

@Named
@Singleton
public class RestaurantController {

    @EJB
    private RestaurantService restaurantService;

    public List<Restaurant> getRestaurants() {
        return restaurantService.findAll();
    }

}
