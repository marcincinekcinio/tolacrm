package pl.coderslab.tolacrm.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.tolacrm.assortment.Assortment;
import pl.coderslab.tolacrm.assortment.AssortmentRepository;
import pl.coderslab.tolacrm.client.Client;
import pl.coderslab.tolacrm.client.ClientRepository;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/orders")
public class OrdersController {

    private OrdersRepository ordersRepository;
    private ClientRepository clientRepository;
    private AssortmentRepository assortmentRepository;

    @Autowired
    public OrdersController(OrdersRepository ordersRepository, ClientRepository clientRepository, AssortmentRepository assortmentRepository) {
        this.ordersRepository = ordersRepository;
        this.clientRepository = clientRepository;
        this.assortmentRepository = assortmentRepository;
    }

    //-------------------------------------------Dodawanie----------------------------------------------------------
    @GetMapping("/add")
    public String addOrders(Model model){
        model.addAttribute("orders", new Orders());
        return "order/addOrder";
    }

    @PostMapping("/add")
    public String addOrders(@ModelAttribute @Validated Orders orders, BindingResult bindingResult, Model model){
        if (bindingResult.hasErrors()){
            return "order/addOrder";
        }
        ordersRepository.save(orders);
        ordersRepository.findById(orders.getId());
        return "redirect:../add/" + orders.getId() + "/orders_assortments";
    }

//            return "/orders/add/{" + orders.getId() + "}/orders_assortments";

    @GetMapping("/add/{id}/orders_assortments")
    public String addAssortment(@PathVariable Long id, Model model){
        Optional<Orders> orders = ordersRepository.findById(id);
        model.addAttribute("orders", orders);
        return "order/addOrder";
    }

    @PostMapping("/add/{id}/orders_assortments")
    public String addAssortment(@PathVariable Long id, @ModelAttribute Orders orders, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "order/addOrder";
        }
        ordersRepository.save(orders);
        return "redirect:../all";
    }
    //-------------------------------------------Wyświetlanie----------------------------------------------------------
    @GetMapping("/all")
    public String allOrders(Model model){
        model.addAttribute("orders", ordersRepository.findAll());
        return "order/ordertList";
    }
    //-------------------------------------------Edycja----------------------------------------------------------
    @GetMapping("/update/{id}")
    public String updateOrders(@PathVariable Long id, Model model){
        Optional<Orders> orders = ordersRepository.findById(id);
        model.addAttribute("orders", orders);
        return "/order/addOrder";
    }

    @PostMapping("/update/{id}")
    public String updateOrders(@PathVariable Long id, @ModelAttribute Orders orders, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "order/addOrder";
        }
        ordersRepository.save(orders);
        return "redirect:../all";
    }
    //-------------------------------------------Usuwanie----------------------------------------------------------
    @GetMapping("/delete/{id}")
    public String deleteOrders(@PathVariable Long id){
        ordersRepository.deleteById(id);
        return "redirect:../all";
    }

    @ModelAttribute("clientsList")
    public List<Client> findAllClients(){
        return clientRepository.findAll();}


    @ModelAttribute("assortmentList")
    public List<Assortment> findallAssortments(){
        return assortmentRepository.findAll();
    }

    @ModelAttribute("ordersList")
    public List<Orders> findAllOrders(){
        return ordersRepository.findAll();}
}
