package com.ksmstat.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ksmstat.dto.PsDTO;
import com.ksmstat.service.PsService;
import com.ksmstat.util.PageMaker;

@Controller
@RequestMapping("/ps/*")
public class PsController {
	
	@Autowired
	PsService psService;
	
	@Autowired
	HttpSession session;
	
	//DataTables jQuery 플러그인을 활용한 목록
	@RequestMapping(value="list.do", method = RequestMethod.GET)
    public String psList(Model model) throws Exception {
		List<PsDTO> psList = psService.psList();
		int cnt = psService.psCount();
		model.addAttribute("psList", psList);
		model.addAttribute("cnt", cnt);
        return "ps/psList";
    }
	
	//페이지메이커를 활용한 페이지 분리하기 목록
	@RequestMapping(value="pageList.do", method = RequestMethod.GET)
    public String psPageList(@RequestParam("curPage") int curPage, Model model) throws Exception {
		int cnt = psService.psCount();
		//PageMaker page = new PageMaker(cnt, curPage);
		//PageMaker page = new PageMaker(cnt, curPage, 10);
		PageMaker page = new PageMaker(cnt, curPage, 10, 10);
		List<PsDTO> psPageList = psService.psPageList(page);
		model.addAttribute("psPageList", psPageList);
		model.addAttribute("page", page);
		model.addAttribute("cnt", cnt);
        return "ps/psPageList";
    }
	
	@RequestMapping(value="addPsForm.do", method = RequestMethod.GET)
    public String addPsForm(Model model) throws Exception {
        return "ps/addPsForm";
    }
	
	@RequestMapping(value="addPs.do", method = RequestMethod.POST)
    public String addBodo(PsDTO ps, Model model) throws Exception {
		psService.addPs(ps);
        return "redirect:/ps/list.do";
    }
	
	@RequestMapping(value="addSmartPsForm.do", method = RequestMethod.GET)
    public String addPsSmartForm(Model model) throws Exception {
        return "ps/addSmartPsForm";
    }
	
	@RequestMapping(value="addSmartps.do", method = RequestMethod.POST)
    public String addSmartPs(PsDTO ps, Model model) throws Exception {
		psService.addPs(ps);
        return "redirect:/ps/list.do";
    }
}