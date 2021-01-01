package com.test.board.Domain.user;

public interface UserService {
    String findByUserid(User userid);

    String createUser(User user);
}
