package com.codecool.dishtrack.controller;


import com.codecool.dishtrack.domain.service.OrderService;
import com.codecool.dishtrack.model.Order;

import javax.ejb.EJB;
import javax.ejb.Singleton;
import javax.inject.Named;
import java.util.List;

@Named
@Singleton
public class OrderController {

    @EJB
    private OrderService orderService;

    public List<Order> getOrders() {
        return orderService.findAll();
    }

}

