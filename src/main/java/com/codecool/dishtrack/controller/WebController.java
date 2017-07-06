package com.codecool.dishtrack.controller;

import com.codecool.dishtrack.model.*;

import com.codecool.dishtrack.repo.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@RestController
public class WebController {

    @Autowired
    private OrderRepository orderRepository;


    @RequestMapping("/")
    @ResponseBody
    List<Order> home() {

        return orderRepository.findById((long)1);
    }

//    @RequestMapping("/")
//    @ResponseBody
//    String home() {
//
//        return "dasdadad";
//    }

}
