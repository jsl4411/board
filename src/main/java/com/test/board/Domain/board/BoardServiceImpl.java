package com.test.board.Domain.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardRepository boardRepository;

    @Override
    public List<Board> findAll(){
        List<Board> boardList = boardRepository.findAll();

        return boardList;
    }

    @Override
    public String write(Board board) {

        boardRepository.save(board);

        return "ok";
    }
    @Override
    public String delete(Long boardSeq){
        boardRepository.deleteById(boardSeq);

        return "ok";
    }

    @Override
    public String edit(Board board) {
        boardRepository.save(board);

        return "ok";
    }
    @Override
    public List<Board> findByBoardGroup(String boardGroup){


        return boardRepository.findByBoardGroup(boardGroup);

    }
}
