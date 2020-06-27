package pl.coderslab.tolacrm.orders;

import org.springframework.data.jpa.repository.JpaRepository;

public interface OrdersItemRepository extends JpaRepository<OrdersItem,Long> {
}
