package pl.coderslab.tolacrm.assortment;

import org.springframework.format.annotation.NumberFormat;
import pl.coderslab.tolacrm.orders.Orders;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "assortments")
public class Assortment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;

    @OneToMany
    private List<Orders> orders = new ArrayList<>();

    public Assortment() {
    }


    public Assortment(@NotEmpty String name) {
        this.name = name;

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
