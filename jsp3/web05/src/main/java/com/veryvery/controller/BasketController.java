package com.veryvery.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.veryvery.dto.BasketDTO;
import com.veryvery.service.BasketService;

@Controller
@RequestMapping("/basket/*")
public class BasketController {

	@Autowired
	BasketService basketService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("list.do")
	public String basketList( Model model, HttpServletRequest request) throws Exception {
		String id = (String) session.getAttribute("sid");
		List<BasketDTO> basketList = basketService.basketList(id);
		model.addAttribute("basketList", basketList);
		return "basket/basketList";
	}
	
	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String boardRead(@RequestParam int bno, Model model) throws Exception {
		BasketDTO basket = basketService.basketRead(bno);
		model.addAttribute("basket", basket);
		return "basket/basketRead";
	}
	

//	@RequestMapping(value="insert.do", method = RequestMethod.GET)
//	public String basketWrite(BasketDTO adto, Model model) throws Exception {
//		basketService.basketWrite(adto);
//		return "redirect:list.do";
//	}
	
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String boardUpdate(BasketDTO adto, Model model) throws Exception {
		basketService.basketUpdate(adto);
		return "redirect:list.do";
	}

	@RequestMapping(value="delete.do", method = RequestMethod.GET)
	public String basketDelete(@RequestParam int bno, Model model) throws Exception {
		basketService.basketDelete(bno);
		return "redirect:list.do";
	}
	
}
