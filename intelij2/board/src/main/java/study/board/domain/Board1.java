package study.board.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Board1 {
    private int seq;
    private String title;
    private String content;
    private String writer;
    private String regdate;

}
