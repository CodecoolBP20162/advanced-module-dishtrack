package com.codecool.dishtrack.model;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import java.util.HashSet;
import java.util.Set;

@NamedQueries({

    @NamedQuery(name="Product.findAll", query="SELECT p FROM Product p"),

    @NamedQuery(name="Product.findById", query="SELECT p FROM Product p WHERE p.id = :id"),

    @NamedQuery(name="Product.findByName", query="SELECT p FROM Product p WHERE p.name = :name"),

    @NamedQuery(name="Product.findByAllergen",
                query = "SELECT p FROM Product p JOIN p.allergens a WHERE :allergen = a.name"),

    @NamedQuery(name="Product.findByIngredient",
                query = "SELECT p FROM Product p JOIN p.ingredients i WHERE :ingredient = i.name"),

    @NamedQuery(name="Product.removeById", query="DELETE FROM Product p WHERE p.id = :id"),

    @NamedQuery(name="Product.findByCategory",
                query = "SELECT p FROM Product p WHERE :category = p.category"),

    @NamedQuery(name="Product.removeAllProducts", query="DELETE FROM Product"),

})

@Entity()
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private long id;

    @Column(name = "product_name")
    private String name;
    private String description;
    @ManyToMany()
    private Set<Ingredient> ingredients = new HashSet<>();
    private String picture;

    @ManyToMany()
    private Set<Allergen> allergens = new HashSet<>();

    @Enumerated
    private Category category;

    @ManyToOne
    @JoinColumn(name = "restaurant_id")
    private Restaurant restaurant;

    public Product() {}

    public Product(String name, String description, Set<Ingredient> ingredients, String picture, Set<Allergen> allergens, Category category, Restaurant restaurant) {
        this.name = name;
        this.description = description;
        this.ingredients = ingredients;
        this.picture = picture;
        this.allergens = allergens;
        this.category = category;
        this.restaurant = restaurant;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Restaurant getRestaurant() {
        return restaurant;
    }

    public void setRestaurant(Restaurant restaurant) {
        this.restaurant = restaurant;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Set<Ingredient> getIngredients() {
        return ingredients;
    }

    public void setIngredients(Set<Ingredient> ingredients) {
        this.ingredients = ingredients;
    }

    public Set<Allergen> getAllergens() {
        return allergens;
    }

    public void setAllergens(Set<Allergen> allergens) {
        this.allergens = allergens;
    }

    //    @Override
//    public String toString() {
//        return "Student{" +
//                "id=" + id +
//                ", name='" + name + '\'' +
//                ", age=" + age +
//                ", address id=" + address.getId() +
//                '}';
//    }

}