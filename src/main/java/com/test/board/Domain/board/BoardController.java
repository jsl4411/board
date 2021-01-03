package com.test.board.Domain.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
    @Autowired
    BoardService boardService;

    @RequestMapping(value = "/{boardGroup}")
    public String board(@PathVariable("boardGroup") String boardGroup, Model model, HttpServletRequest request){

        System.out.println("@@@@"+boardGroup);
        List<Board> boardlist =boardService.findByBoardGroup(boardGroup);

        model.addAttribute("loginUser",request.getSession().getAttribute("loginUser"));
        model.addAttribute("boardlist",boardlist);


        if (boardGroup.equals("lost")) {
            return "board/lolist";
        }else {
            return "board/filist";
        }
    }

    @GetMapping(value = "/write")
    public String getwrite(Model model, HttpServletRequest request){

        model.addAttribute("loginUser",request.getSession().getAttribute("loginUser"));

        return "board/lowrite";
    }

    @PostMapping(value = "/write")
    public String write(Board board){

        return "redirect:/";
    }
    @GetMapping(value = "/content/{boardSeq}")
    public String content(@PathVariable Long boardSeq, Model model, HttpServletRequest request){

        Board board = boardService.findById(boardSeq);

        model.addAttribute("loginUser",request.getSession().getAttribute("loginUser"));

        model.addAttribute("boardcontant", board);
        return "board/locontent";
    }
    @GetMapping(value = "/edit/{boardSeq}")
    public String edit(@PathVariable Long boardSeq,Model model, HttpServletRequest request){
        Board boardedit = boardService.findById(boardSeq);

        model.addAttribute("loginUser",request.getSession().getAttribute("loginUser"));

        model.addAttribute("boardedit",boardedit);
        System.out.println("!#!#@#!#@"+boardedit);
        return "board/updatef";
    }
}
