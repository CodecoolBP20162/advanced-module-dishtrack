package com.codecool.dishtrack.controller;


import com.codecool.dishtrack.model.*;
import com.codecool.dishtrack.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RequestMapping("/order")
@RestController
public class OrderController {

    @Autowired
    OrderRepository orderRepository;

    @Autowired
    OrderedItemsRepository orderedItemsRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    CartItemRepository cartItemRepository;

    @Autowired
    ShoppingCartRepository shoppingCartRepository;

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

    @RequestMapping("/updatedeliverystatus")
    @ResponseBody
    void updateDeliveryStatus(@RequestParam(value="status", required=true) String status,
                              @RequestParam(value="orderId", required=true) String orderId){
        Order order = orderRepository.findOrderById(Integer.parseInt(orderId));
        order.setDeliveryStatus(status);
        orderRepository.save(order);

    }

    @RequestMapping("/deleteorder")
    @ResponseBody
    void deleteOrder(@RequestParam(value="orderId", required=true) Integer orderId){
        orderRepository.delete((long)orderId);
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

    @RequestMapping("/saveorder")
    @ResponseBody
    void saveOrder(@RequestParam(value="paymentMethod") String paymentMethod) {
//      user id from session
//      delivery status = ordered
        User user = userRepository.findUserById(1); //the parameter should be userID from the session
        Order order = new Order("ordered", PaymentMethod.CASH, user);
        orderRepository.save(order);
        ShoppingCart shoppingCart = shoppingCartRepository.findShoppingCartByCustomer(user);
        List<CartItem> cartItems = shoppingCart.getCartItems();
        for(CartItem cartItem : cartItems){
            orderedItemsRepository.save(new OrderedItems(order, cartItem.getProduct(),cartItem.getQuantity()));
        }
        shoppingCartRepository.deleteAllByCustomer(user);
        for (int i = 0; i < cartItems.size(); i++) {
             cartItemRepository.delete(cartItems.get(i).getId());
        }

    }


}