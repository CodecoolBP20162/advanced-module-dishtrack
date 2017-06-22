package com.codecool.dishtrack.model;

import javax.persistence.*;

@Entity
@Table(name = "shopping_cart")
public class ShoppingCart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "shopping_cart_id")
    private long id;

    @ManyToOne
    @JoinColumn(referencedColumnName = "product_id")
    private Product product;

    @ManyToOne
    @JoinColumn(referencedColumnName = "user_id")
    private User customer;

    private Integer quantity;

    public ShoppingCart() {}

    public ShoppingCart(Product product, User customer, Integer quantity) {
        this.product = product;
        this.customer = customer;
        this.quantity = quantity;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public User getCustomer() {
        return customer;
    }

    public void setCustomer(User customer) {
        this.customer = customer;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}
