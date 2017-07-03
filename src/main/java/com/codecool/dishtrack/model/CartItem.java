package com.codecool.dishtrack.model;

import javax.persistence.*;

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

    @ManyToOne
    private ShoppingCart cart;

    public CartItem() {
    }

    public CartItem(Product product, Integer quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public ShoppingCart getCart() {
        return cart;
    }

    public void setCart(ShoppingCart cart) {
        this.cart = cart;
    }
}
