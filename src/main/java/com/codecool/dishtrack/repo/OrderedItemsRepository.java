package com.codecool.dishtrack.repo;

/**
 * Created by joker on 2017.07.06..
 */
import com.codecool.dishtrack.model.OrderedItems;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface OrderedItemsRepository extends CrudRepository<OrderedItems, Long> {
    List<OrderedItems> findById(Long id);
}

