package com.codecool.dishtrack.controller;

import com.codecool.dishtrack.model.*;
import com.codecool.dishtrack.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.enterprise.inject.Model;
import javax.inject.Inject;
import javax.inject.Scope;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@RequestMapping("/cart")
@RestController
public class CartController {

    @Autowired
    ShoppingCartRepository cartRepository;

    @Autowired
    CartItemRepository cartItemRepository;



    @Autowired
    ProductRepository productRepository;

    @Autowired
    UserRepository userRepository;

    @RequestMapping("/save")
    public void init (HttpSession session){

        session.setAttribute("userId", 1);
        Product alma = productRepository.findProductById(1);
        User user1 = new User("user1", "user1@gmail.com", "pw", "John", "Doe", "Nagymezo street 44", "Budapest", "1234", "01231256485");
        CartItem firstItem = new CartItem(alma, 2);
        List<CartItem> cartItems = Arrays.asList(firstItem);
        ShoppingCart cart1 = new ShoppingCart(cartItems, user1);
        System.out.println(cart1.getCustomer().getFirstName());

        userRepository.save(user1);
        cartItemRepository.save(cartItems);
        cartRepository.save(cart1);
    }

    @RequestMapping("/getcart")
    @ResponseBody
    public ShoppingCart getCart(HttpSession session) {
        String id = session.getAttribute("userId").toString();
        User user = userRepository.findUserById(Integer.valueOf(id));
        ShoppingCart sessionCart = cartRepository.findShoppingCartByCustomer((long)1);
        return sessionCart;
    }

    @RequestMapping(value = "/addToCart", method = RequestMethod.GET)
    @ResponseBody
    public String addToCart(HttpSession session,
                            @RequestParam(value="productId") int productId,
                            @RequestParam(value="quantity") int quantity) {
        String id = session.getAttribute("userId").toString();
        Product product = productRepository.findProductById(productId);
        CartItem newItem = new CartItem(product, quantity);
        ShoppingCart sessionCart = cartRepository.findShoppingCartByCustomer(Long.valueOf(id));
        sessionCart.addCartItem(newItem);
        cartRepository.save(sessionCart);

        return "sikerült";
    }

//    @RequestMapping("/")
//    @ResponseBody
//    String home() {
//
//        return "dasdadad";
//    }

}
