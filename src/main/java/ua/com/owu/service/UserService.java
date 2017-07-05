package ua.com.owu.service;


import org.springframework.stereotype.Service;
import ua.com.owu.entity.User;

public interface UserService {
    void save(User user);
    User findByName(String username);
}
