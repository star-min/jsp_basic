package com.okhospital.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.okhospital.dto.BoardDTO;
import com.okhospital.dto.MemberDTO;
import com.okhospital.service.BoardService;

@Controller
@RequestMapping("/board/")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	BoardService boardService;
	
	@RequestMapping(value="list", method = RequestMethod.GET)
	public String boardList(Model model) throws Exception {
		List<BoardDTO> list = boardService.boardList();
		model.addAttribute("list",list);
		return "board/list";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	@RequestMapping(value="test/doA", method = RequestMethod.GET)
	public String doA(Locale locale, Model model) {
		logger.info("doA 페이지~!");
		model.addAttribute("msg","doA 테스트");
		return "/test/doA";
	}
	
	@RequestMapping(value="test/doB", method = RequestMethod.GET)
	public ModelAndView doB(Locale locale, Model model) {
		Map<String, Integer> map = new HashMap<>();
		map.put("test", 1004);
		logger.info("doB 페이지~! map 배달~!");
		model.addAttribute("msg", "doB 테스트");  //ModelAndView는 하나의 객체 전달 밖에 못함
		return new ModelAndView("/test/doB", "map", map);
	}

	
	@RequestMapping(value="test/doC", method = RequestMethod.GET)
	public ModelAndView doC(Locale locale, Model model) {
		ArrayList<MemberDTO> list = new ArrayList<>();
		MemberDTO dto1 = new MemberDTO();
		dto1.setHid("kkt");
		dto1.setHpw("1234");
		list.add(dto1);
		MemberDTO dto2 = new MemberDTO();
		dto2.setHid("cjy");
		dto2.setHpw("4321");
		list.add(dto2);
		logger.info("doC 페이지~! list 배달~!");
		model.addAttribute("msg", "doC 테스트");
		return new ModelAndView("/test/doC", "list", list);
	}

	@RequestMapping(value="test/doD")
	public String doD(Locale locale, Model model) {
			//해당 url로 자동포워딩후 이동됨 
			return "redirect:/test/doD";
	}

}
