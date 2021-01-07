package com.test.board.Domain.picture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/picture")
public class PictureApiController {
    @Autowired
    PictureService pictureService;

    @RequestMapping(value = "/write")
    public String write(Picture picture){
        Picture picture1 = new Picture();

        picture1.setPictureName("picture1");
        picture1.setBoardSeq(2L);

        return pictureService.write(picture1);
    }
    @RequestMapping(value = "/delete/{pictureSeq}")
    public String delete(@PathVariable("pictureSeq") Long pictureSeq){

        return pictureService.deleteById(pictureSeq);
    }
}
