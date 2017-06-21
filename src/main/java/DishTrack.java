
import model.*;
import org.eclipse.persistence.internal.oxm.schema.model.All;

import javax.persistence.*;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class DishTrack {

    public static void populateDb(EntityManager em) {

        Restaurant restaurant1 = new Restaurant("rest1");
        User user1 = new User("eeee", "eeee", "pw", "fn", "ln", "add", "cit", "111");
        Allergen gluten = new Allergen("gluten");
        Allergen milk = new Allergen("milk");
        Ingredient chicken = new Ingredient("chicken");
        Set<Allergen> allergens1 = new HashSet<>(Arrays.asList(gluten, milk));
        Set<Ingredient> ingredients1 = new HashSet<>(Arrays.asList(chicken));
        Product becsiszelet = new Product("Becsi Szelet", "description1", ingredients1, "pic1.jpg", allergens1, Category.FOOD, restaurant1);
        Product rantotthus = new Product("Rantott hus", "description2",  ingredients1, "pic2.jpg", allergens1, Category.DESSERT, restaurant1);
        Order order1 = new Order("delivered", PaymentMethod.CASH, user1);
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(user1);
        em.persist(gluten);
        em.persist(milk);
        em.persist(chicken);
        em.persist(restaurant1);
        em.persist(becsiszelet);
        em.persist(rantotthus);
        em.persist(order1);

        transaction.commit();
        System.out.println("Database populated");
    }

    public static void main(String[] args) {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaexamplePU");
        EntityManager em = emf.createEntityManager();

        populateDb(em);

        String hql = "FROM Product";
        Query query = em.createQuery(hql);
        List<Product> results = query.getResultList();

        for(Product product : results) {
            System.out.println(product.getRestaurant().getName());
            for (Allergen allergen : product.getAllergens()) {
                System.out.println(allergen.getName());
            }
            for (Ingredient ingredient : product.getIngredients()) {
                System.out.println(ingredient.getName());
            }
        }

//        Product product1 = em.find(Product.class, 1L);
//        System.out.println("product name: " + product1.getName());
//        System.out.println("restaurant name: " + product1.getRestaurant().getName());
//        System.out.println("restaurant id: " + product1.getRestaurant().getId());
//        System.out.println("product category: " + product1.getCategory());

        em.close();
        emf.close();

    }
}
