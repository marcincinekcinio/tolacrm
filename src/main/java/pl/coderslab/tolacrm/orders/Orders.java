package pl.coderslab.tolacrm.orders;

import pl.coderslab.tolacrm.assortment.Assortment;
import pl.coderslab.tolacrm.client.Client;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "orders")
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String data;

    @NotEmpty
    private String hour;

    @ManyToOne
    private Client client;

    public Orders() {
    }

    public Orders(@NotEmpty String data, @NotEmpty String hour, Client client) {
        this.data = data;
        this.hour = hour;
        this.client = client;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", data='" + data + '\'' +
                ", hour='" + hour + '\'' +
                ", client=" + client +
                '}';
    }
}



