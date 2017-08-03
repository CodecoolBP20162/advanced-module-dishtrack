package com.codecool.dishtrack.repo;

import java.util.List;

import com.codecool.dishtrack.model.Order;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface OrderRepository extends CrudRepository<Order, Long> {
    List<Order> findById(long id);
    List<Order> findOrdersByDeliveryStatus(String status);
    Order findOrderById(long id);
    List<Order> findOrdersByCourierId(long id);
}
