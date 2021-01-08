package com.test.board.Domain.picture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class PictureServiceImpl implements PictureService {
    @Autowired
    private PictureRepository pictureRepository;

    @Override
    public Picture findById(long pictureSeq) {

        return pictureRepository.findById(pictureSeq).orElse(null);
    }

    @Override
    public String write(BoardVO board) {
        Picture picture1 = new Picture();

        picture1.setPictureName(board.pictureName);
        picture1.setBoardSeq(board.boardSeq);

        System.out.println("service!!!!!"+picture1);

        pictureRepository.save(picture1);

        return "success";
    }

    @Override
    public String deleteById(Long pictureSeq) {
        pictureRepository.deleteById(pictureSeq);
        return "success";
    }
}
