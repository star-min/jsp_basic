package com.veryvery.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.veryvery.dto.BoardDTO;
import com.veryvery.service.LatestService;

@Controller
@RequestMapping("/latest/*")
public class LatestController {
	
	@Autowired
	LatestService latestService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("list.do")
	public String latestBoard(Model model) throws Exception {
		List<BoardDTO> latestBoard = latestService.latestBoard();
		model.addAttribute("latestBoard", latestBoard);
		return "latest/latestBoard";
	}

}
