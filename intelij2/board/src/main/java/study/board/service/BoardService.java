package study.board.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import study.board.domain.Board1;
import study.board.mappers.Board1Mapper;

import java.util.List;

@Service
@RequiredArgsConstructor    // Mapper 생성자를 사용할 수 있게 함
@Transactional(readOnly = true)
public class BoardService {
    private final Board1Mapper board1Mapper;

    public int boardCount() {
        return board1Mapper.boardCount(); // 게시글 수 반환
    }

    public List<Board1> boardList() {
        return board1Mapper.getList();
    }
}
