package com.okhospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;

import com.okhospital.dto.BoardDTO;
import com.okhospital.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	//private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	//다음 서비스 작업 객체를 주입
	@Autowired
	BoardService boardService;
	
	@RequestMapping("list.do")
	public String boardList(Model model) throws Exception {
		List<BoardDTO> boardList = boardService.boardList();
		model.addAttribute("boardList", boardList);
		return "board/boardList";
	}

// 구형 ModelAndView 방식		하나의 데이터밖에 전달못함
//	public ModelAndView boardList() throws Exception {
//		List<BoardDTO> boardList = boardService.boardList();
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("board/boardList");
//		mav.addObject("boardList", boardList);
//		return mav;
//	}
	
	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String boardRead(@RequestParam int seq, Model model) throws Exception {
		BoardDTO board = boardService.boardRead(seq);
		model.addAttribute("board", board);
		return "board/boardRead";
	}

	@RequestMapping("write_form.do")  //board/write_form  -> board/boardWriteForm.jsp
	public String boardWriteForm(Model model) throws Exception {
		return "board/boardWriteForm.do";
	}
	
	@RequestMapping(value="insert.do", method = RequestMethod.POST)
	public String boardWrite(BoardDTO bdto, Model model) throws Exception {
		boardService.boardWrite(bdto);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String boardUpdate(BoardDTO bdto, Model model) throws Exception {
		boardService.boardUpdate(bdto);
		return "redirect:list.do";
	}

	@RequestMapping(value="delete.do", method = RequestMethod.GET)
	public String boardDelete(@RequestParam int seq, Model model) throws Exception {
		boardService.boardDelete(seq);
		return "redirect:list.do";
	}
}