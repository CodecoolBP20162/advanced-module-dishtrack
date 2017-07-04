package com.codecool.dishtrack.model;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import javax.persistence.*;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by kata on 2017.06.22..
 */
class ProductTest {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaexamplePU");
    EntityManager em = emf.createEntityManager();
    EntityTransaction transaction = em.getTransaction();


    Product alma;
    Product eper;
    Restaurant restaurant1;
    Allergen gluten;
    Allergen milk;
    Ingredient chicken;

    @BeforeEach
    void setUp() throws SQLException {
        transaction.begin();
        em.createNamedQuery("Product.removeAllProducts").executeUpdate();
        transaction.commit();
        restaurant1 = new Restaurant("rest1");
        gluten = new Allergen("gluten");
        milk = new Allergen("milk");
        chicken = new Ingredient("chicken");
        Set<Allergen> allergens1 = new HashSet<>(Arrays.asList(gluten, milk));
        Set<Allergen> allergens2 = new HashSet<>(Arrays.asList(milk));
        Set<Ingredient> ingredients1 = new HashSet<>(Arrays.asList(chicken));
        alma = new Product("Alma", "description1", ingredients1, "pic1.jpg", allergens1, Category.FOOD, restaurant1);
        eper = new Product("Eper", "description2",  ingredients1, "pic2.jpg", allergens2, Category.DESSERT, restaurant1);
        transaction.begin();
        em.persist(gluten);
        em.persist(milk);
        em.persist(chicken);
        em.persist(restaurant1);
        em.persist(alma);
        em.persist(eper);
        transaction.commit();
    }

    @Test
    void findAll_findsAllProduct() throws SQLException {
        List<Product> allProducts = Arrays.asList(alma, eper);

        assertEquals(allProducts.toString(),
                em.createNamedQuery("Product.findAll", Product.class).getResultList().toString());
    }

    @Test
    void findById_findsProductById() throws SQLException {
        long productId = alma.getId();
        Product foundProduct = em.createNamedQuery("Product.findById", Product.class)
                .setParameter("id", productId)
                .getSingleResult();

        assertEquals(productId, foundProduct.getId());
    }

    @Test
    void find_searchesProductsByIdNotPresent_throwsException() {

        assertThrows(NoResultException.class, ()-> {
            em.createNamedQuery("Product.findById", Product.class)
                    .setParameter("id", (long)3)
                    .getSingleResult();;
        });
    }

    @Test
    void findByName_findsProductByName() throws SQLException {
        String productName = alma.getName();
        Product foundProduct = em.createNamedQuery("Product.findByName", Product.class)
                .setParameter("name", productName)
                .getSingleResult();;

        assertEquals(productName, foundProduct.getName());
    }

    @Test
    void find_searchesProductsByNameNotPresent_throwsException() {
        assertThrows(NoResultException.class, ()-> {
            em.createNamedQuery("Product.findByName", Product.class)
                    .setParameter("name", "korte")
                    .getSingleResult();;
        });
    }


    @Test
    void find_findsProductByAllergen_returnsOneElement() throws SQLException {
        List<Product> expected = Arrays.asList(alma);
        List<Product> actual = em.createNamedQuery("Product.findByAllergen", Product.class)
                .setParameter("allergen", "gluten")
                .getResultList();

        assertEquals(expected.toString(), actual.toString());
    }

    @Test
    void find_findsProductByAllergen_returnsMoreThanOneElement() throws SQLException {
        List<Product> expected = Arrays.asList(alma, eper);
        List<Product> actual = em.createNamedQuery("Product.findByAllergen", Product.class)
                .setParameter("allergen", "milk")
                .getResultList();

        assertEquals(expected.toString(), actual.toString());
    }

    @Test
    void find_findsProductByIngredient_returnsElements() throws SQLException {
        List<Product> expected = Arrays.asList(alma, eper);
        List<Product> actual = em.createNamedQuery("Product.findByIngredient", Product.class)
                .setParameter("ingredient", "chicken")
                .getResultList();

        assertEquals(expected.toString(), actual.toString());
    }

    @Test
    void remove_removesProductFromDatabaseBasedOnId() {
        transaction.begin();
        em.createNamedQuery("Product.removeById")
                .setParameter("id", (long)1)
                .executeUpdate();
        transaction.commit();

        assertThrows(NoResultException.class, ()-> {
            em.createNamedQuery("Product.findById", Product.class)
                    .setParameter("id", (long)1)
                    .getSingleResult();
        });
    }

    @Test
    void find_findsProductByCategory_returnsElements() throws SQLException {
        List<Product> expected = Arrays.asList(alma);
        List<Product> actual = em.createNamedQuery("Product.findByCategory", Product.class)
                .setParameter("category",Category.FOOD)
                .getResultList();

        assertEquals(expected.toString(), actual.toString());
    }



    @AfterEach
    void tearDown() {
        em.close();
        emf.close();
    }
}