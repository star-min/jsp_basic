package com.example.test.service;

import com.example.test.dao.BoardDAO;
import com.example.test.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {
    @Autowired
    BoardDAO boardDAO;

    @Override
    public List<BoardVO> selectListBoard(BoardVO boardVO) throws Exception{
        return boardDAO.selectListBoard(boardVO);
    }

    @Override
    public BoardVO getBoard(int seq) throws Exception {
        return boardDAO.getBoard(seq);
    }
}
