package com.test.board.Domain.picture;

import lombok.AccessLevel;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Entity
@Data
@Table(name = "picture")
public class Picture {
    @Id
    @GeneratedValue
    @Column(nullable = false)
    private Long pictureSeq;

    @Column(nullable = false)
    private Long boardSeq;
    @Column(nullable = false)
    private String pictureName;
}
