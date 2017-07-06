package com.codecool.dishtrack.controller;


import com.codecool.dishtrack.model.*;
import com.codecool.dishtrack.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RequestMapping("/users")
@RestController
public class UserController {

    @Autowired
    UserRepository userRepository;


    @RequestMapping("/getusers")
    @ResponseBody
    Iterable<User> getUsers() {
        return userRepository.findAll();
    }

    @RequestMapping("/getcouriers")
    @ResponseBody
    List<User> getCouriers() {
        return userRepository.findUsersByRole(Role.COURIER);
    }

    @RequestMapping("/getcustomers")
    @ResponseBody
    List<User> getCustomers() {
        return userRepository.findUsersByRole(Role.CUSTOMER);
    }

    @RequestMapping("/getfirstuser")
    @ResponseBody
    User getFirstUser() {
        return userRepository.findUserById(1);
    }

    @RequestMapping("/adduser")
    @ResponseBody
    void addUser(
                @RequestParam(value="firstname", required=false, defaultValue="John") String firstName,
                @RequestParam(value="lastname", required=false, defaultValue="Doe") String lastName,
                @RequestParam(value="username", required=true) String userName,
                @RequestParam(value="email", required=true) String email,
                @RequestParam(value="password", required=true) String password,
                @RequestParam(value="address", required=true) String address,
                @RequestParam(value="city", required=true) String city,
                @RequestParam(value="zip", required=true) String zip,
                @RequestParam(value="phone", required=true) String phone,
                @RequestParam(value="role", required=true, defaultValue = "customer") String role
                ) {

        User newUser = new User(userName, email, password, firstName, lastName, address, city, zip, phone);
        if (role.equals("customer")) {
            newUser.setRole(Role.CUSTOMER);
        }
        else if (role.equals("courier")) {
            newUser.setRole(Role.COURIER);
        }

        userRepository.save(newUser);
    }

}