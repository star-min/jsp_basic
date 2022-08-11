package com.example.test.service;

import com.example.test.vo.BoardVO;

import java.util.List;

public interface BoardService {
    public List<BoardVO> selectListBoard(BoardVO boardVO) throws Exception;
    public BoardVO getBoard(int seq) throws Exception;
}
