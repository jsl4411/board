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
    @Transactional
    public String write(Picture picture) {
        pictureRepository.save(picture);
        return "success";
    }

    @Override
    public String deleteById(Long pictureSeq) {
        pictureRepository.deleteById(pictureSeq);
        return "success";
    }
}
