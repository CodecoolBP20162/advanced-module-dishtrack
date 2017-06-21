package com.codecool.dishtrack;


import com.codecool.dishtrack.model.User;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import static org.mockito.Mockito.when;

class UserDaoTest {

    static User johndoe;
    static User marydoe;
    static List<User> users;

    @Mock
    private EntityManager em;

    @Mock
    TypedQuery<User> getAllUsersCriteria;

    @InjectMocks
    private UserDao SUT;

    @BeforeEach
    public void init() {
        MockitoAnnotations.initMocks(this);
        SUT = new UserDao(em); // system under test
        
        johndoe = new User("johndoe", "pass@email.com", "pass", "John",
                "Doe", "Fa utca 1.", "Budapest", "1131", "20/9999999");
        johndoe.setId(0);
    }

    @Test
    public void testGetAllUsers_shouldReturnAllUsers() {
        //Given
        marydoe = new User("marydoe", "pass@email.com", "word", "Mary",
                "Doe", "Fa utca 1.", "Budapest", "1131", "70/9999999");
        marydoe.setId(1);
        users = new ArrayList<>(Arrays.asList(johndoe, marydoe));
        String jpql = "SELECT u from User u";
        List<User> expected = new LinkedList<>(Arrays.asList(johndoe, marydoe));
        when(em.createQuery(jpql, User.class)).thenReturn(getAllUsersCriteria);
        when(getAllUsersCriteria.getResultList()).thenReturn(users);

        //When
        List<User> actual = SUT.getAllUsers();

        //Then
        Assertions.assertEquals(expected, actual);
    }

    @Disabled
    @Test
    public void findUserById_ShouldReturnUser() {
        //Given
        User expected = johndoe;

        //When
        User actual = SUT.findUserById(0);

        //Then
        Assertions.assertEquals(expected, actual);
    }
}