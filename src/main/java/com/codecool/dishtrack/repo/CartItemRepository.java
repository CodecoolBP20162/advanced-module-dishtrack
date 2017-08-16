package com.codecool.dishtrack.repo;

/**
 * Created by joker on 2017.07.06..
 */
import com.codecool.dishtrack.model.CartItem;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface CartItemRepository extends CrudRepository<CartItem, Long> {
    CartItem findById(Long id);
}
