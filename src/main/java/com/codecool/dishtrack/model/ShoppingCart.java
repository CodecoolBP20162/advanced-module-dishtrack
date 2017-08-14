package com.codecool.dishtrack.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "shopping_cart")
public class ShoppingCart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "shopping_cart_id")
    private long id;

    @ManyToMany
    private List<CartItem> cartItems;

    @OneToOne
    @JoinColumn(referencedColumnName = "user_id")
    private User customer;

    public ShoppingCart() {}

    public ShoppingCart(List<CartItem> cartItems, User customer) {
        this.cartItems= cartItems;
        this.customer = customer;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public void addCartItem(CartItem cartItem) {
        this.cartItems.add(cartItem);
    }

    public User getCustomer() {
        return customer;
    }

    public void setCustomer(User customer) {
        this.customer = customer;
    }

}
