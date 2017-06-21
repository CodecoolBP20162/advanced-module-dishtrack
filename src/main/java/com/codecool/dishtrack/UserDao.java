package com.codecool.dishtrack;

import com.codecool.dishtrack.model.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.List;


public class UserDao {

    private EntityManager em;

    UserDao(EntityManager em) {
        this.em = em;
    }

    public List<User> getAllUsers() {
        String jpql = "SELECT u from User u";
        List<User> users = em.createQuery(jpql, User.class).getResultList();
        return users;
    }

    public void addUser(User customer) {
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(customer);
        transaction.commit();
    }

    public User findUserById(int userId) {
        String jpql = "SELECT u from User u where id=" + Integer.toString(userId);
        User user = em.createQuery(jpql, User.class).getSingleResult();
        return user;
    }



}
