package model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Allergen {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "allergen_id")
    private long id;

    private String name;

    @ManyToMany(mappedBy = "allergens")
    private Set<Product> products = new HashSet<>();

    public Allergen() {}

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Allergen(String name) {
        this.name = name;

    }
}
