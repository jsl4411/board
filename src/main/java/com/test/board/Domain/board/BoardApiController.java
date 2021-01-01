package com.test.board.Domain.board;

import com.test.board.Domain.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
    @RequestMapping(value = "/write")
    public String write(Board board){

        User user = new User();
        user.setUserid("jsjs");
        Board board1 = new Board();
        board1.setBoardSub("제목");
        board1.setBoardGroup("분실물");
        board1.setAno(02L);
        board1.setContent("내용");
        board1.setCategory("종류");
        board1.setDate(new Date());
        board1.setPlace("위치");
        board1.setUser(user);

        return boardService.write(board1);
    }
    @GetMapping(value = "/delete/{boardSeq}")
    public String delete(@PathVariable("boardSeq") Long boardSeq){

        return boardService.delete(boardSeq);
    }
    @GetMapping(value = "/edit/{boardSeq}")
    public String edit(@PathVariable("boardSeq")Long boardSeq){
        Board board1 = new Board();
        User user = new User();

        user.setUserid("jsjs");
        board1.setBoardSeq(2L);
        board1.setBoardSub("제목1");
        board1.setBoardGroup("습득물");
        board1.setUser(user);
        board1.setContent("ㅇㅇ");
        board1.setPlace("장소");

        return boardService.edit(board1);
    }
}
