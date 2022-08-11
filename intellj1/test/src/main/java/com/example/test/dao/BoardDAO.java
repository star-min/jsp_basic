package com.example.test.dao;

import com.example.test.vo.BoardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardDAO {
    public List<BoardVO> selectListBoard(BoardVO boardVO) throws Exception;
    public BoardVO getBoard(int seq);
}
