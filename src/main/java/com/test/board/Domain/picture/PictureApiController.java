package com.test.board.Domain.picture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/picture")
public class PictureApiController {
    @Autowired
    PictureService pictureService;

    @PostMapping(value = "/write")
    public String write(@RequestBody BoardVO board){

        return pictureService.write(board);
    }
    @RequestMapping(value = "/delete/{pictureSeq}")
    public String delete(@PathVariable("pictureSeq") Long pictureSeq){

        return pictureService.deleteById(pictureSeq);
    }
}
