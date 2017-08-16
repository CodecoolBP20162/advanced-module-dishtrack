package com.codecool.dishtrack.model;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by kata on 2017.06.22..
 */

@Entity()
@Table(name = "cart_items")
public class CartItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "item_id")
    private long id;

    @OneToOne
    @JoinColumn(referencedColumnName = "product_id")
    private Product product;

    private Integer quantity;

    @ManyToMany(mappedBy = "cartItems")
    private Set<ShoppingCart> cart;

    public CartItem() {
    }

    public long getId() {
        return id;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public CartItem(Product product, Integer quantity) {
        this.product = product;
        this.quantity = quantity;
    }


    public Set<ShoppingCart> getCart() {
        return cart;
    }

    public void setCart(Set<ShoppingCart> cart) {
        this.cart = cart;
    }

    public Product getProduct(){ return product;}
}
