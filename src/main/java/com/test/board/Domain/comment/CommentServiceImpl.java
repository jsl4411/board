package com.test.board.Domain.comment;

import com.test.board.Domain.board.Board;
import com.test.board.Domain.board.BoardRepository;
import com.test.board.Domain.user.User;
import com.test.board.Domain.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class CommentServiceImpl implements CommentService{
    @Autowired
    CommentRepository commentRepository;
    @Autowired
    UserRepository userRepository;
    @Autowired
    BoardRepository boardRepository;
    @Override
    public List<Comment> findAll() {
        return null;
    }

    @Override
    public List<Comment> findBySeq(long seq){

        return commentRepository.findBySeq(seq);
    }

    @Override
    public String write(Comment comment, String userid) {

        Optional<User> user = Optional.ofNullable(userRepository.findByUserid(userid));
        Comment comment1 = new Comment();
        comment1.setContent(comment.getContent());
        comment1.setSeq(comment.getSeq());
        comment1.setDate(new Date());
        comment1.setUser(user.get());

        System.out.println("!!!!!!!!"+comment1);
        commentRepository.save(comment1);

        return "ok";
    }
    @Override
    public String delete(Long commentSeq){
        commentRepository.deleteById(commentSeq);
        return "ok";
    }
    @Override
    public String edit(Comment comment, String userid){
        Optional<User> user = Optional.ofNullable(userRepository.findByUserid(userid));
        Comment comment1 = new Comment();
        comment1.setSeq(comment.getSeq());
        comment1.setDate(comment.getDate());
        comment1.setCommentSeq(comment.getCommentSeq());
        comment1.setContent(comment.getContent());
        comment1.setUser(user.get());

        commentRepository.save(comment1);

        return "ok";
    }
}
