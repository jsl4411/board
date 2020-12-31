package com.test.board.Domain.comment;

import com.test.board.Domain.user.User;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@NoArgsConstructor
@Data
@Entity
@Table(name = "comment")
public class Comment {
    @Id
    @GeneratedValue
    @Column(name = "commentSeq", nullable = false)
    private Long commentSeq;

    @Column(name = "seq",nullable = false)
    private Long seq;
    @ManyToOne(targetEntity = User.class)
    @JoinColumn(name = "userid",nullable = false)
    private User user;

    @Temporal(TemporalType.DATE)
    Date date;

    @Column(name = "content", length = 1000, nullable = false)
    private String content;
}
