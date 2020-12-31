package com.test.board.Domain.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login")
    public String login(){
        return "main/login";
    }
    @GetMapping(value = "/logout")
    public String logout(HttpSession session){
        session.removeAttribute("loginUser");

        return "redirect:/";
    }
    @RequestMapping(value = "/signup")
    public String signUp(){
        return "main/signup";
    }

}
