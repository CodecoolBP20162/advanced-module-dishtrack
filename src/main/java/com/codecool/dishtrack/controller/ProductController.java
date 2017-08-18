package com.codecool.dishtrack.controller;

import com.codecool.dishtrack.model.*;
import com.codecool.dishtrack.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@CrossOrigin
@RequestMapping("/products")
@RestController
public class ProductController {

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

    @RequestMapping("/save")
    public void init (){
        Restaurant restaurant1 = new Restaurant("rest1");
        Allergen gluten = new Allergen("gluten");
        Allergen milk = new Allergen("milk");
        Ingredient chicken = new Ingredient("chicken");
        Set<Allergen> allergens1 = new HashSet<>(Arrays.asList(gluten, milk));
        Set<Allergen> allergens2 = new HashSet<>(Arrays.asList(milk));
        Set<Ingredient> ingredients1 = new HashSet<>(Arrays.asList(chicken));
        Product alma = new Product("Alma", "description1", ingredients1, "pic1.jpg", allergens1, Category.FOOD, restaurant1);
        Product eper = new Product("Eper", "description2",  ingredients1, "pic2.jpg", allergens2, Category.DESSERT, restaurant1);


        User user1 = new User("user1", "user1@gmail.com", "pw", "John", "Doe", "Nagymezo street 44", "Budapest", "1234", "01231256485");
        Order order1 = new Order("ordered", PaymentMethod.CASH, user1);
        Order order2 = new Order("delivered", PaymentMethod.CREDITCARD, user1);
        CartItem firstItem = new CartItem(alma, 2);
        List<CartItem> cartItems = Arrays.asList(firstItem);
        ShoppingCart cart1 = new ShoppingCart(cartItems, user1);
//        Review review1 = new Review(user1, "It was good!");
//        restaurant1.addReview(review1);

        restaurantRepository.save(restaurant1);
        allergenRepository.save(gluten);
        allergenRepository.save(milk);
        ingredientRepository.save(chicken);
        productRepository.save(alma);
        productRepository.save(eper);
        userRepository.save(user1);
        orderRepository.save(order1);
        orderRepository.save(order2);
        cartItemRepository.save(cartItems);
        shoppingCartRepository.save(cart1);
//        reviewRepository.save(review1);

    }


    @RequestMapping("/getproducts")
    @ResponseBody
    Iterable<Product> getProducts() {
        return productRepository.findAll();
    }

    @RequestMapping("/getfirstproduct")
    @ResponseBody
    Product getFirstProduct() {
        return productRepository.findProductById(1);
    }

    @RequestMapping("/getproductbyname")
    @ResponseBody
    Product getProductByName() {
        return productRepository.findProductByName("Alma");
    }

//    @RequestMapping(value="/addproduct", method=RequestMethod.POST)
//    @ResponseBody
//    void addProduct(@RequestParam(value="name", required=false, defaultValue="John") String name,
//                    @RequestParam(value="description", required=false, defaultValue="Doe") String description,
//                    @RequestParam(value="ingredients", required=true) String ingredient,
//                    @RequestParam(value="picture", required=true) String picture,
//                    @RequestParam(value="allergens", required=true) String allergen1,
//                    @RequestParam(value="category", required=true) String category) {
//
//        Allergen allergen = new Allergen(allergen1);
//        Set<Allergen> allergens = new HashSet<>(Arrays.asList(allergen));
//        Ingredient chicken = new Ingredient(ingredient);
//        Set<Ingredient> ingredients = new HashSet<>(Arrays.asList(chicken));
//        Restaurant restaurant = new Restaurant("restaurant123");
//        Product newProduct = new Product(name, description, ingredients, picture, allergens, Category.FOOD, restaurant);
//
//        productRepository.save(newProduct);
//    }

    @RequestMapping(value = "/addproduct", method = RequestMethod.POST)
    @ResponseBody
    String addProduct(@RequestBody Map<String, String> payload){
        System.out.println("P A Y L O A D:");
        // name, description, image, price

//        Product newProduct = new Product(payload["name"], payload["description"], )

        return "Success";
    }

//    @RequestMapping("/")
//    @ResponseBody
//    String home() {
//
//        return "dasdadad";
//    }

}
