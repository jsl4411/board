package com.test.board.Domain.board;

import com.test.board.Domain.picture.BoardVO;
import com.test.board.Domain.picture.Picture;

import java.util.List;

public interface BoardService {
    List<Board> findAll();

    String write(BoardVO board,Picture picture, String userid);

    String delete(Long boardSeq);

    String edit(Board board, String userid);

    List<Board> findByBoardGroup(String boardGroup);

    Board findById(Long boardSeq);

}
