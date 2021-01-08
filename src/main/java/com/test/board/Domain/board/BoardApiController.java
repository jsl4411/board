package com.test.board.Domain.board;

import com.test.board.Domain.awsS3.S3Uploader;
import com.test.board.Domain.picture.BoardVO;
import com.test.board.Domain.picture.Picture;
import com.test.board.Domain.picture.PictureService;
import com.test.board.Domain.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping(value = "/board/api")
public class BoardApiController {
    @Autowired
    BoardService boardService;
    @Autowired
    PictureService pictureService;

    @Autowired
    private S3Uploader s3Uploader;


    @RequestMapping(value = "/findAll", method = RequestMethod.GET)
    public List<Board> findAll(){

        return boardService.findAll();
    }
    @PostMapping(value = "/write")
    public String write(@RequestBody BoardVO board,Picture picture, HttpServletRequest request) {
        String userid = (String) request.getSession().getAttribute("loginUser");
        System.out.println("@@@@@@@@@"+board);

        return boardService.write(board,picture,userid);
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
