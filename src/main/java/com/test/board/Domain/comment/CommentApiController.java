package com.test.board.Domain.comment;

import com.test.board.Domain.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping(value = "comment/api/")
public class CommentApiController {
    @Autowired CommentService commentService;

    @RequestMapping(value = "/{boardSeq}", method = RequestMethod.GET)
    public List<Comment> findAll(@PathVariable ("boardSeq") Long boardSeq){

        return commentService.findBySeq(boardSeq);
    }
    @RequestMapping(value = "/write")
    public String write(Comment comment){
        Comment comment1 = new Comment();
        User user = new User();
        user.setUserid("jsjs");
        comment1.setContent("아니");
        comment1.setDate(new Date());
        comment1.setUser(user);
        comment1.setSeq(2L);

    return commentService.write(comment1);
    }
    @GetMapping (value = "/delete/{commentSeq}")
    public String delete(@PathVariable("commentSeq") Long commentSeq){


        return commentService.delete(commentSeq);
    }
    @GetMapping(value = "/edit/{commentSeq}")
    public String edit(@PathVariable("commentSeq") Long commentSeq){
        Comment comment1 = new Comment();
        User user = new User();

        user.setUserid("jsjs");
        comment1.setCommentSeq(1L);
        comment1.setUser(user);
        comment1.setDate(new Date());
        comment1.setContent("변경됨");
        comment1.setSeq(2L);

        return commentService.edit(comment1);

    }
}
