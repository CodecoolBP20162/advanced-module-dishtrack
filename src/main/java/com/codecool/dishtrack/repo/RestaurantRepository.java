package com.codecool.dishtrack.repo;

/**
 * Created by joker on 2017.07.06..
 */
import com.codecool.dishtrack.model.Restaurant;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface RestaurantRepository extends CrudRepository<Restaurant, Long> {
    List<Restaurant> findById(Long id);
}
