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
    List<Product> findById(Long id);
}

//package com.codecool.dishtrack.repo;
//
///**
// * Created by joker on 2017.07.06..
// */
//        import com.codecool.dishtrack.model.PaymentMethod;
//        import org.springframework.data.repository.CrudRepository;
//        import org.springframework.transaction.annotation.Transactional;
//
//        import java.util.List;
//
//@Transactional
//public interface PaymentMethodRepository extends CrudRepository<PaymentMethod, Long> {
//    List<PaymentMethod> findById(Long id);
//}
