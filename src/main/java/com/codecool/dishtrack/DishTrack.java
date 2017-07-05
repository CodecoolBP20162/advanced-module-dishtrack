package com.codecool.dishtrack;

import com.codecool.dishtrack.domain.service.ProductService;
import com.codecool.dishtrack.model.*;

import javax.persistence.*;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class DishTrack {

    public static void populateDb(EntityManager em) {

        Restaurant restaurant1 = new Restaurant("rest1");
        User user1 = new User("eeee", "eeee", "pw", "fn", "ln", "add", "cit", "111", "56485");
        Allergen gluten = new Allergen("gluten");
        Allergen milk = new Allergen("milk");
        Ingredient chicken = new Ingredient("chicken");
        Set<Allergen> allergens1 = new HashSet<>(Arrays.asList(gluten, milk));
        Set<Allergen> allergens2 = new HashSet<>(Arrays.asList(milk));
        Set<Ingredient> ingredients1 = new HashSet<>(Arrays.asList(chicken));
        Product becsiszelet = new Product("Becsi Szelet", "description1", ingredients1, "pic1.jpg", allergens1, Category.FOOD, restaurant1);
        Product rantotthus = new Product("Rantott hus", "description2",  ingredients1, "pic2.jpg", allergens2, Category.DESSERT, restaurant1);
        Order order1 = new Order("delivered", PaymentMethod.CASH, user1);
        CartItem firstItem = new CartItem(becsiszelet, 2);
        List<CartItem> cartItems = Arrays.asList(firstItem);
        ShoppingCart cart1 = new ShoppingCart(cartItems, user1);
        Review review1 = new Review(user1, "was good");
        restaurant1.addReview(review1);
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(user1);
        em.persist(gluten);
        em.persist(milk);
        em.persist(chicken);
        em.persist(restaurant1);
        em.persist(becsiszelet);
        em.persist(rantotthus);
        em.persist(order1);
        em.persist(firstItem);
        em.persist(cart1);
        em.persist(review1);
        transaction.commit();

        System.out.println("Database populated");
        System.out.println();
    }

    public static void main(String[] args) {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaexamplePU");
        EntityManager em = emf.createEntityManager();

        populateDb(em);

        List<Product> products = em.createNamedQuery("Product.findAll", Product.class).getResultList();
        Product qProduct = em.createNamedQuery("Product.findById", Product.class).setParameter("id", (long)1).getSingleResult();
        List<Product> withAllergen = em.createNamedQuery("Product.findByAllergen", Product.class).setParameter("allergen", "gluten").getResultList();

        for(Product product : products) {
            System.out.println(product.getRestaurant().getName());
            for (Allergen allergen : product.getAllergens()) {
                System.out.println(allergen.getName());
            }
            for (Ingredient ingredient : product.getIngredients()) {
                System.out.println(ingredient.getName());
            }
        }

        System.out.println("found by id: "+ qProduct.getId() + ". " + qProduct.getName());
        System.out.println(withAllergen);

//        Product product1 = em.find(Product.class, 1L);
//        System.out.println("product name: " + product1.getName());
//        System.out.println("restaurant name: " + product1.getRestaurant().getName());
//        System.out.println("restaurant id: " + product1.getRestaurant().getId());
//        System.out.println("product category: " + product1.getCategory());

        em.close();
        emf.close();

    }
}
