package com.test.board.Domain.user;

public interface UserService {
    String findById(User user);

    String createUser(User user);
}
