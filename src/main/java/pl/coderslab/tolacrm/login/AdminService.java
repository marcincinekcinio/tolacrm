package pl.coderslab.tolacrm.login;

public interface AdminService {

    Admin findByUserName(String name);

    void saveAdmin(Admin admin);

    void updateAdmin(Admin admin);

}
