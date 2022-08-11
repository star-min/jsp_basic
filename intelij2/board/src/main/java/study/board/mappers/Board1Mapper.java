package study.board.mappers;

import org.springframework.stereotype.Repository;
import study.board.domain.Board1;

import java.util.List;

@Repository
public interface Board1Mapper {
    int boardCount(); // Board1Mapper.xml 의 sql에 id 랑 같아야함
    List<Board1> getList();
}
