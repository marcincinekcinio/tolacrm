package pl.coderslab.tolacrm.orders;

import org.hibernate.criterion.Order;
import org.springframework.format.annotation.NumberFormat;
import pl.coderslab.tolacrm.assortment.Assortment;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "orders_assortments")
public class OrdersItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Orders orders;

    @ManyToOne
    private Assortment assortment;

    @NotEmpty
    @NumberFormat
    private String quantity;

    public OrdersItem() {
    }

    public OrdersItem(Orders orders, Assortment assortment, @NotEmpty String quantity) {
        this.orders = orders;
        this.assortment = assortment;
        this.quantity = quantity;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public Assortment getAssortment() {
        return assortment;
    }

    public void setAssortment(Assortment assortment) {
        this.assortment = assortment;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "OrdersItem{" +
                "id=" + id +
                ", orders=" + orders +
                ", assortment=" + assortment +
                ", quantity='" + quantity + '\'' +
                '}';
    }
}
