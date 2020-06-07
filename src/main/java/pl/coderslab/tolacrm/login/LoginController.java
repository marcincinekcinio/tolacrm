package pl.coderslab.tolacrm.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

        @GetMapping("/")
    public String home(){
        return "home";
    }

    @GetMapping("/login")
    public String login(){
        return "admin/login";
    }
    private final AdminService adminService;

    public LoginController(AdminService adminService) {
        this.adminService = adminService;
    }

    @GetMapping("/create-user")
    @ResponseBody
    public String createUser(){
        Admin admin = new Admin();
        admin.setUsername("admin");
        admin.setPassword("admin");
        adminService.saveAdmin(admin);
        return "admin";
    }
}
