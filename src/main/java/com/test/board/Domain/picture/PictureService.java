package com.test.board.Domain.picture;

public interface PictureService {

    Picture findById(long pictureSeq);

    String write(BoardVO board);

    String deleteById(Long pictureSeq);
}
