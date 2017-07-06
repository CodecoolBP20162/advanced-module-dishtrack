package com.codecool.dishtrack.repo;

/**
 * Created by joker on 2017.07.06..
 */
import com.codecool.dishtrack.model.Ingredient;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface IngredientRepository extends CrudRepository<Ingredient, Long> {
    List<Ingredient> findById(Long id);
}

