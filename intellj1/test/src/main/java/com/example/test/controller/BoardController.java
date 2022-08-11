package com.example.test.controller;

import com.example.test.service.BoardService;
import com.example.test.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/board/")
public class BoardController {
    @Autowired
    BoardService boardService;

    @RequestMapping("list.do")
    public String selectListBoard(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception{
        List<BoardVO> list =boardService.selectListBoard(boardVO);
        model.addAttribute("list", list);
        return "boardList";
    }

    @RequestMapping(value = "getBoard/{seq}", method = RequestMethod.GET)
    public String getBoard(@PathVariable("seq") int seq, ModelMap model) throws Exception{
        BoardVO baord = boardService.getBoard(seq);
        model.addAttribute("baord", baord);
        return "getboard";
    }
}
