package com.test.board.Domain.board;

import com.test.board.Domain.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping(value = "/board/api")
public class BoardApiController {
    @Autowired
    BoardService boardService;

    @RequestMapping(value = "/findAll", method = RequestMethod.GET)
    public List<Board> findAll(){

        return boardService.findAll();
    }
    @PostMapping(value = "/write")
    public String write(@RequestBody Board board, HttpServletRequest request){
        String userid = (String) request.getSession().getAttribute("loginUser");
        System.out.println("@@@@@@@@@"+board);

        return boardService.write(board,userid);
    }
    @GetMapping(value = "/delete/{boardSeq}")
    public String delete(@PathVariable Long boardSeq){

        return boardService.delete(boardSeq);
    }
    @PostMapping(value = "/edit/{boardSeq}")
    public String edit(@RequestBody Board board, HttpServletRequest request){
        String userid = (String) request.getSession().getAttribute("loginUser");

        return boardService.edit(board, userid);
    }
}
