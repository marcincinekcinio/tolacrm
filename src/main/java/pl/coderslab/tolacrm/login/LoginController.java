package pl.coderslab.tolacrm.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class LoginController {

    private AdminRepository adminRepository;
    private final AdminService adminService;

    @Autowired
    public LoginController(AdminRepository adminRepository, AdminService adminService) {
        this.adminRepository = adminRepository;
        this.adminService = adminService;
    }

    @GetMapping("/")
    public String home(){
        return "home";
    }

    //-------------------------------------------Dodawanie----------------------------------------------------------
    @GetMapping("/admin/add")
    public String showAdmins(Model model){
        model.addAttribute("admin", new Admin());
        return "admin/addAdmin";
    }

    @PostMapping("/admin/add")
    public String addAdmin(@ModelAttribute @Validated Admin admin, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "admin/addAdmin";
        }
        adminService.saveAdmin(admin);
        return "redirect:../admin/add";
    }
    //-------------------------------------------Wyświetlanie----------------------------------------------------------
    @GetMapping("/admin/all")
    public String allAdmins(Model model){
        model.addAttribute("admins", adminRepository.findAll());
        return "admin/adminList";
    }
    //-------------------------------------------Usuwanie----------------------------------------------------------
    @GetMapping("/admin/delete/{id}")
    public String deleteAdmin(@PathVariable Long id){
        adminRepository.deleteById(id);
        return "redirect:/admin/all";
    }
    //-------------------------------------------Edycja----------------------------------------------------------
    @GetMapping("/admin/update/{id}")
    public String upadte(@PathVariable Long id, Model model){
        Optional<Admin> admin = adminRepository.findById(id);
        model.addAttribute("admin", admin);
        return "/admin/addAdmin";
    }

    @PostMapping("/admin/update/{id}")
    public String update(@PathVariable Long id, @ModelAttribute Admin admin, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "admin/addAdmin";
        }
        adminService.updateAdmin(admin);
        return "redirect:/admin/all";
    }
}
