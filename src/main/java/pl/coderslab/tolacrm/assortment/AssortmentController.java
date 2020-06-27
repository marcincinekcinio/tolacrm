package pl.coderslab.tolacrm.assortment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.tolacrm.client.Client;

import java.util.Optional;

@Controller
@RequestMapping("/assortment")
public class AssortmentController {

    private AssortmentRepository assortmentRepository;

    @Autowired
    public AssortmentController(AssortmentRepository assortmentRepository) {
        this.assortmentRepository = assortmentRepository;
    }
//-------------------------------------------Dodawanie----------------------------------------------------------
    @GetMapping("/add")
    public String addAssortment(Model model){
        model.addAttribute("assortment", new Assortment());
        return "assortment/addAssortment";
    }

    @PostMapping("/add")
    public String addAssortment(@ModelAttribute @Validated Assortment assortment, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "assortment/addAssortment";
        }
        assortmentRepository.save(assortment);
        return "redirect:../assortment/add";
    }
//-------------------------------------------Wyświetlanie----------------------------------------------------------
    @GetMapping("/all")
    public String allAssortment(Model model){
        model.addAttribute("assortments", assortmentRepository.findAll());
        return "assortment/assortmentList";
    }
    //-------------------------------------------Edycja----------------------------------------------------------
    @GetMapping("/update/{id}")
    public String updateAssortments(@PathVariable Long id, Model model){
        Optional<Assortment> assortment = assortmentRepository.findById(id);
        model.addAttribute("assortment", assortment);
        return "/assortment/addAssortment";
    }

    @PostMapping("/update/{id}")
    public String updateUsers(@PathVariable Long id, @ModelAttribute Assortment assortment, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "assortment/addAssortment";
        }
        assortmentRepository.save(assortment);
        return "redirect:../all";
    }
    //-------------------------------------------Usuwanie----------------------------------------------------------
    @GetMapping("/delete/{id}")
    public String deleteAssortments(@PathVariable Long id){
        assortmentRepository.deleteById(id);
        return "redirect:../all";
    }
}
