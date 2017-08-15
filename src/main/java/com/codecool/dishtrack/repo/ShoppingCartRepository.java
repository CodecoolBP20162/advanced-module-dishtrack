package com.codecool.dishtrack.repo;

/**
 * Created by joker on 2017.07.06..
 */
import com.codecool.dishtrack.model.ShoppingCart;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface ShoppingCartRepository extends CrudRepository<ShoppingCart, Long> {
    ShoppingCart findShoppingCartByCustomer(long id);
}

