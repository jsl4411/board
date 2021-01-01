package com.test.board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {
    @RequestMapping(value = "/")
    public String index(Model model, HttpServletRequest request){

        model.addAttribute("loginUser",request.getSession().getAttribute("loginUser"));

        return "main/domain";
    }

}
