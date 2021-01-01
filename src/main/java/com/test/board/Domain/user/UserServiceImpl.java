package com.test.board.Domain.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserRepository userRepository;

    @Override
    public String findByUserid(User logninUser) {
        User userData = userRepository.findByUserid(logninUser.getUserid());

        System.out.println("!@#"+userData);

        if (userData == null) {
            return "fail";
        }
        if (logninUser.getPwd().equals(userData.getPwd())) {
            return "ok";
        }
        return "fail";
    }


    @Override
    public String createUser(User signupUser) {
        User userData = userRepository.findByUserid(signupUser.getUserid());

        if(userData != null){
            return "fail";
        }
        userRepository.save(signupUser);

        return "ok";
    }
}
