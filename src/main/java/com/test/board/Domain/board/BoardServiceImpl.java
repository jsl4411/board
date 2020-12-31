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
}
