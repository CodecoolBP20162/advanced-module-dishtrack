package com.codecool.dishtrack.repo;

/**
 * Created by joker on 2017.07.06..
 */

import com.codecool.dishtrack.model.ShoppingCart;
import com.codecool.dishtrack.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface ShoppingCartRepository extends CrudRepository<ShoppingCart, Long> {
    ShoppingCart findShoppingCartByCustomer(User user);
    void deleteAllByCustomer(User user);
}

