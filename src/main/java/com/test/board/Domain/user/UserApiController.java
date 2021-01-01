package com.test.board.Domain.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping(value = "user/api")
public class UserApiController {
    @Autowired
    UserService userService;

    @RequestMapping(value = "/login")
    public String login(User user){


        User user1 = new User();
        user1.setUserid("jsjs");
        user1.setPwd("1234");
        System.out.println("print" +user+user1);


        return userService.findByUserid(user1);
    }
    @RequestMapping(value = "/signup")
    public String singUp(User user){

        User user1 = new User();

        user1.setPhone("123412334");
        user1.setName("빠끄");
        user1.setEmail("1@2");
        user1.setUserid("jsjs");
        user1.setPwd("1234");


        return userService.createUser(user1);
    }

}
