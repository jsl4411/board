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

    @PostMapping(value = "/login")
    public String login(@RequestBody User user, HttpSession session,
                        HttpServletRequest request, HttpServletResponse response){

        session = request.getSession();
        session.setAttribute("loginUser", user.getUserid());

        return userService.findById(user);
    }

}
