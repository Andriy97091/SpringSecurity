package ua.com.owu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.owu.entity.User;
import ua.com.owu.service.UserService;

/**
 * Created by User on 03.07.2017.
 */
@Controller
public class MainController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String toIndex(){
        return "index";
    }

    @PostMapping("/registration")
    public String register(@RequestParam("username") String username,
                           @RequestParam("password") String password){
        userService.save(new User(username,password));
        return "index";
    }
    @GetMapping("toLogin")
    public String logination(){

        return "login";
    }
}
