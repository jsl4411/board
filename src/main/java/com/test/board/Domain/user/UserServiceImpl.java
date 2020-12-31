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
    public String findById(User user) {
        List<User> userData = userRepository.findById(user);
        System.out.println(userData);
       return null;
    }



    @Override
    public String createUser(User user) {
        return null;
    }
}
