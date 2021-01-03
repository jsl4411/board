package com.test.board.Domain.board;

import java.util.List;

public interface BoardService {
    List<Board> findAll();

    String write(Board board, String userid);

    String delete(Long boardSeq);

    String edit(Board board, String userid);

    List<Board> findByBoardGroup(String boardGroup);

    Board findById(Long boardSeq);

}
