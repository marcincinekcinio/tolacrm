package pl.coderslab.tolacrm.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.swing.text.html.Option;
import java.util.Optional;

@Controller
@RequestMapping("/client")
public class ClientController {

    private ClientRepository clientRepository;

    @Autowired
    public ClientController(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }
    //-------------------------------------------Dodawanie----------------------------------------------------------
    @GetMapping("/add")
    public String addClient(Model model){
        model.addAttribute("client", new Client());
        return "client/addClient";
    }

    @PostMapping("/add")
    public String addClient(@ModelAttribute @Validated Client client, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "client/addClient";
        }
        clientRepository.save(client);
        return "redirect:../client/add";
    }
    //-------------------------------------------Wyświetlanie----------------------------------------------------------
    @GetMapping("/all")
    public String allUsers(Model model){
        model.addAttribute("clients", clientRepository.findAll());
        return "client/clientList";
    }
    //-------------------------------------------Edycja----------------------------------------------------------
    @GetMapping("/update/{id}")
    public String updateUsers(@PathVariable Long id, Model model){
        Optional<Client> client = clientRepository.findById(id);
        model.addAttribute("client", client);
        return "/client/addClient";
    }

    @PostMapping("/update/{id}")
    public String updateUsers(@PathVariable Long id, @ModelAttribute Client client, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "client/addClient";
        }
        clientRepository.save(client);
        return "redirect:../all";
    }
    //-------------------------------------------Usuwanie----------------------------------------------------------
    @GetMapping("/delete/{id}")
    public String deleteClient(@PathVariable Long id){
        clientRepository.deleteById(id);
        return "redirect:../all";
    }
}

