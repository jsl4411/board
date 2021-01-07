package com.test.board.Domain.picture;

public interface PictureService {

    Picture findById(long pictureSeq);

    String write(Picture picture);

    String deleteById(Long pictureSeq);
}
