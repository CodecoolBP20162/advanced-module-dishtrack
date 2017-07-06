package com.codecool.dishtrack.repo;

/**
 * Created by joker on 2017.07.06..
 */
import com.codecool.dishtrack.model.Review;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface ReviewRepository extends CrudRepository<Review, Long> {
    List<Review> findById(Long id);
}

