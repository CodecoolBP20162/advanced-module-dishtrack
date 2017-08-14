package com.codecool.dishtrack.repo;

/**
 * Created by joker on 2017.07.06..
 */
import com.codecool.dishtrack.model.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface ProductRepository extends CrudRepository<Product, Long> {
    Product findProductById(long id);
    Product findProductByName(String name);
    List<Product> queryAllBy();
}

