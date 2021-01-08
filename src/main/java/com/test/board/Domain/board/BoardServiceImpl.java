package com.test.board.Domain.board;

import com.test.board.Domain.picture.BoardVO;
import com.test.board.Domain.picture.Picture;
import com.test.board.Domain.picture.PictureRepository;
import com.test.board.Domain.user.User;
import com.test.board.Domain.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardRepository boardRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PictureRepository pictureRepository;

    @Override
    public List<Board> findAll(){
        List<Board> boardList = boardRepository.findAll();

        return boardList;
    }

    @Override
    public String write(BoardVO board,Picture picture, String userid) {

        Optional<User> user = Optional.ofNullable(userRepository.findByUserid(userid));
        Board board1 = new Board();
        board1.setBoardSub(board.getBoardSub());
        board1.setBoardGroup(board.getBoardGroup());
        board1.setUser(user.get());
        board1.setPlace(board.getPlace());
        board1.setDate(board.getDate());
        board1.setContent(board.getContent());
        board1.setCategory(board.getCategory());
        board1.setAno(board.getAno());

        System.out.println("###########"+board1);
        boardRepository.save(board1);
        boardRepository.findById(board1.getBoardSeq());

        Picture picture1 = new Picture();
        picture1.setPictureName(board.getPictureName());
        picture1.setBoardSeq(board1.getBoardSeq());

        System.out.println("!@#!@#!@#"+picture1);
        pictureRepository.save(picture1);


        return "ok";
    }
    @Override
    public String delete(Long boardSeq){

        boardRepository.deleteById(boardSeq);

        return "ok";
    }

    @Override
    public String edit(Board board, String userid) {
        Optional<User> user = Optional.ofNullable(userRepository.findByUserid(userid));
        Board board1 = new Board();
        board1.setBoardSeq(board.getBoardSeq());
        board1.setUser(user.get());
        board1.setBoardGroup(board.getBoardGroup());
        board1.setBoardSub(board.getBoardSub());
        board1.setPlace(board.getPlace());
        board1.setContent(board.getContent());
        board1.setCategory(board.getCategory());
        board1.setDate(board.getDate());
        board1.setAno(board.getAno());

        System.out.println("@@@@@@@@@@"+board1);

        boardRepository.save(board1);

        return "ok";
    }
    @Override
    public List<Board> findByBoardGroup(String boardGroup){

        return boardRepository.findByBoardGroup(boardGroup);

    }

    @Override
    public Board findById(Long boardSeq) {
        return boardRepository.findById(boardSeq).orElse(null);
    }
}
