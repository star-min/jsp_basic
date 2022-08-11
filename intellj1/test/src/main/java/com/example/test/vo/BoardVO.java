package com.example.test.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
    private int seq;
    private String title;
    private String content;
    private String writer;
    private String regdate;
}
