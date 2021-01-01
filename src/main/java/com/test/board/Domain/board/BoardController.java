package com.test.board.Domain.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
    @Autowired
    BoardService boardService;

    @RequestMapping(value = "/{boardGroup}")
    public String board(@PathVariable String boardGroup, Model model, HttpServletRequest request){

        System.out.println("@@@@"+boardGroup);
        List<Board> boardlist =boardService.findByBoardGroup(boardGroup);

        model.addAttribute(request.getSession().getAttribute("loginUser"));
        model.addAttribute("boardlist",boardlist);
        if (boardGroup.equals("분실물")) {
            return "board/lolist";
        }else {
            return "board/filist";
        }
    }
}
