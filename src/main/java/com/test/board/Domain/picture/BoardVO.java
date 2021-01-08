package com.test.board.Domain.picture;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class BoardVO {
    Long boardSeq;
    Long ano;
    String userid;
    Date date;
    String boardGroup;
    String content;
    String place;
    String category;
    String boardSub;

    Long pictureSeq;
    String pictureName;
}
