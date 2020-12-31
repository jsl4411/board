package com.test.board.Domain.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/")
public class BoardApiController {
    @Autowired
    BoardService boardService;

    @RequestMapping(value = "findAll", method = RequestMethod.GET)
    public List<Board> findAll(){

        return boardService.findAll();
    }
}
