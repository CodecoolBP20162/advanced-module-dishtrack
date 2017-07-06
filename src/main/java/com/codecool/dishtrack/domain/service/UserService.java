package com.codecool.dishtrack.domain.service;

import com.codecool.dishtrack.model.Order;
import com.codecool.dishtrack.model.User;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class UserService extends AbstractFacade<User> {

    @PersistenceContext(unitName = "jpaexamplePU")
    private EntityManager em;

    public UserService() {
        super(User.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
}
