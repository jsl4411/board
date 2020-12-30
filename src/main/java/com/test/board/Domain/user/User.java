package com.test.board.Domain.user;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@NoArgsConstructor
@Table(name = "user")
@Entity
public class User {
    @Id
    @Column(name = "userid",length = 30, nullable = false)
    private String userid;

    @Column(name = "pwd", length = 30, nullable = false)
    private String pwd;

    @Column(name = "email", length = 100, nullable = false)
    private String email;

    @Column(name = "phone", length = 50)
    private String phone;

    @Column(name = "name", length = 50, nullable = false)
    private String name;
}
