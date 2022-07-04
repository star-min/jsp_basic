package com.veryvery.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;

import com.veryvery.dto.BoardDTO;
import com.veryvery.dto.ReviewDTO;
import com.veryvery.service.ReviewService;

@Controller
@RequestMapping("/review/*")
public class ReviewController {
	//private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	//다음 서비스 작업 객체를 주입
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("list.do")
	public String reviewList(Model model) throws Exception {
		List<ReviewDTO> reviewList = reviewService.reviewList();
		model.addAttribute("reviewList", reviewList);
		return "review/reviewList";
	}

	
	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String reviewRead(@RequestParam int seq, Model model) throws Exception {
		ReviewDTO review = reviewService.reviewRead(seq);
		model.addAttribute("review", review);
		return "review/reviewRead";
	}

	@RequestMapping("write_form.do") 
	public String reviewWriteForm(Model model) throws Exception {
		return "review/reviewWriteForm";
	}
	
	@RequestMapping(value="insert.do", method = RequestMethod.POST)
	public String reviewWrite(ReviewDTO rdto, Model model) throws Exception {
		reviewService.reviewWrite(rdto);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String reviewUpdate(ReviewDTO rdto, Model model) throws Exception {
		reviewService.reviewUpdate(rdto);
		return "redirect:list.do";
	}

	@RequestMapping(value="delete.do", method = RequestMethod.GET)
	public String reviewDelete(@RequestParam int seq, Model model) throws Exception {
		reviewService.reviewDelete(seq);
		return "redirect:list.do";
	}
}