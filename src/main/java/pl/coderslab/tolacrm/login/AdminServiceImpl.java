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

}
