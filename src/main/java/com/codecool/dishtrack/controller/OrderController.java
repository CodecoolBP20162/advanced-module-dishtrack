package com.codecool.dishtrack.controller;


import com.codecool.dishtrack.model.Order;
import com.codecool.dishtrack.model.User;
import com.codecool.dishtrack.repo.OrderRepository;
import com.codecool.dishtrack.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/order")
@Controller
public class OrderController {

    @Autowired
    OrderRepository orderRepository;

    @Autowired
    UserRepository userRepository;

    @RequestMapping("/orders")
    public String greeting(Model model) {
        Iterable<Order> orders = orderRepository.findAll();
        model.addAttribute("orders", orders);
        return "orders";
    }

    @RequestMapping("/getorders")
    @ResponseBody
    Iterable<Order> getOrders() {
        return orderRepository.findAll();
    }

    @RequestMapping("/getordersbystatus")
    @ResponseBody
    List<Order> getOrdersByStatus(@RequestParam(value="status", required=true) String status) {
        return orderRepository.findOrdersByDeliveryStatus(status);
    }

    @RequestMapping("/assigncourier")
    @ResponseBody
    Order assignCourier(@RequestParam(value="orderId", required=true) String orderId,
                       @RequestParam(value="userId", required=true) String userId) {
        Order order = orderRepository.findOrderById(Integer.parseInt(orderId));
        User courier = userRepository.findUserById(Integer.parseInt(userId));

        order.setCourier(courier);
        orderRepository.save(order);

        return orderRepository.findOrderById(Integer.parseInt(orderId));
    }

//    @RequestMapping("/getorders")
//    @ResponseBody
//    Iterable<User> getOrders() {
//        return orderRepository.findAll();
//    }

}