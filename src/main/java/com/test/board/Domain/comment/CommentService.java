package com.test.board.Domain.comment;

import java.util.List;

public interface CommentService {
    List<Comment> findAll();

    List<Comment> findBySeq(long seq);

    String write (Comment comment, String userid);

    String delete(Long commentSeq);

    String edit(Comment comment, String userid);
}
