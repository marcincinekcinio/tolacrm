package pl.coderslab.tolacrm.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.HashSet;
import java.util.Set;

public class SpringDataUserDetailsService implements UserDetailsService {

    private AdminService adminService;

    @Autowired
    public void setUserRepository(AdminService adminService) {
        this.adminService = adminService;
    }

    @Override
    public UserDetails loadUserByUsername(String adminname){
        Admin admin = adminService.findByUserName(adminname);
        if (admin == null) {throw new UsernameNotFoundException(adminname);}
        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        grantedAuthorities.add(new SimpleGrantedAuthority(admin.getRole()));
        return new org.springframework.security.core.userdetails.User(admin.getUsername(),admin.getPassword(),grantedAuthorities);
    }
}
