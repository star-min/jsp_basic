package com.ksmstat.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ksmstat.dto.BodoboardDTO;
import com.ksmstat.service.BodoboardService;
import com.ksmstat.util.PageMaker;

@Controller
@RequestMapping("/bodoboard/*")
public class BodoboardController {
	
	@Autowired
	BodoboardService bodoboardService;
	
	@Autowired
	HttpSession session;
	
	//DataTables jQuery 플러그인을 활용한 목록
	@RequestMapping(value="list.do", method = RequestMethod.GET)
    public String bodoList(Model model) throws Exception {
		List<BodoboardDTO> bodoList = bodoboardService.bodoList();
		int cnt = bodoboardService.bodoCount();
		model.addAttribute("bodoList", bodoList);
		model.addAttribute("cnt", cnt);
        return "bodoboard/bodoList";
    }
	
	//페이지메이커를 활용한 페이지 분리하기 목록
	@RequestMapping(value="pageList.do", method = RequestMethod.GET)
    public String bodoPageList(@RequestParam("curPage") int curPage, Model model) throws Exception {
		int cnt = bodoboardService.bodoCount();
		//PageMaker page = new PageMaker(cnt, curPage);
		//PageMaker page = new PageMaker(cnt, curPage, 10);
		PageMaker page = new PageMaker(cnt, curPage, 10, 10);
		List<BodoboardDTO> bodoPageList = bodoboardService.bodoPageList(page);
		model.addAttribute("bodoPageList", bodoPageList);
		model.addAttribute("page", page);
		model.addAttribute("cnt", cnt);
        return "bodoboard/bodoPageList";
    }
	
	@RequestMapping(value="addBodoForm.do", method = RequestMethod.GET)
    public String addBodoForm(Model model) throws Exception {
        return "bodoboard/addBodoForm";
    }
	
	@RequestMapping(value="addBodo.do", method = RequestMethod.POST)
    public String addBodo(BodoboardDTO bodoboard, Model model) throws Exception {
		bodoboardService.addBodo(bodoboard);
        return "redirect:/bodoboard/list.do";
    }
	
	@RequestMapping(value="addSmartBodoForm.do", method = RequestMethod.GET)
    public String addBodoSmartForm(Model model) throws Exception {
        return "bodoboard/addSmartBodoForm";
    }
	
	@RequestMapping(value="addSmartbodo.do", method = RequestMethod.POST)
    public String addSmartBodo(BodoboardDTO bodoboard, Model model) throws Exception {
		bodoboardService.addBodo(bodoboard);
        return "redirect:/bodoboard/list.do";
    }
}