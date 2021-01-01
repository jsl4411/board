package com.test.board.Domain.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService{
    @Autowired
    CommentRepository commentRepository;

    @Override
    public List<Comment> findAll() {
        return null;
    }

    @Override
    public List<Comment> findBySeq(long seq){

        return commentRepository.findBySeq(seq);
    }

    @Override
    public String write(Comment comment) {

        commentRepository.save(comment);

        return "ok";
    }
    @Override
    public String delete(Long commentSeq){
        commentRepository.deleteById(commentSeq);
        return "ok";
    }
    @Override
    public String edit(Comment comment){

        commentRepository.save(comment);

        return "ok";
    }
}
