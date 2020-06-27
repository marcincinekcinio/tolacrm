package pl.coderslab.tolacrm.login;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Transactional
@Service
public class AdminServiceImpl implements AdminService{

    private final AdminRepository adminRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    public AdminServiceImpl(AdminRepository adminRepository, BCryptPasswordEncoder passwordEncoder) {
        this.adminRepository = adminRepository;
        this.passwordEncoder = passwordEncoder;
    }
    @Override
    public Admin findByUserName(String adminName){
        return adminRepository.findByUsername(adminName);
    }

    @Override
    public void saveAdmin(Admin admin){
        admin.setPassword(passwordEncoder.encode(admin.getPassword()));
        admin.setEnabled(1);
        admin.setRole("ROLE_ADMIN");
        adminRepository.save(admin);
    }

    @Override
    public void updateAdmin(Admin admin){
        Admin admin1 = adminRepository.getOne(admin.getId());
        admin1.setUsername(admin.getUsername());
        if (!admin.getPassword().equals("")){
            admin1.setPassword(admin.getPassword());
        }
        admin1.setFirstname(admin.getFirstname());
        admin1.setLastname(admin.getLastname());
    }



}
