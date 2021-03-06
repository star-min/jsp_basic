package com.ksmstat.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ksmstat.dto.EmployDTO;
import com.ksmstat.service.EmployService;
import com.ksmstat.util.PageMaker;

@Controller
@RequestMapping("/employ/*")
public class EmployController {
	
	@Autowired
	EmployService employService;
	
	@Autowired
	HttpSession session;
	
	//DataTables jQuery 플러그인을 활용한 목록
	@RequestMapping(value="list.do", method = RequestMethod.GET)
    public String employList(Model model) throws Exception {
		List<EmployDTO> employList = employService.employList();
		int cnt = employService.employCount();
		model.addAttribute("employList", employList);
		model.addAttribute("cnt", cnt);
        return "employ/employList";
    }
	
	//페이지메이커를 활용한 페이지 분리하기 목록
	@RequestMapping(value="pageList.do", method = RequestMethod.GET)
    public String employPageList(@RequestParam("curPage") int curPage, Model model) throws Exception {
		int cnt = employService.employCount();
		//PageMaker page = new PageMaker(cnt, curPage);
		//PageMaker page = new PageMaker(cnt, curPage, 10);
		PageMaker page = new PageMaker(cnt, curPage, 10, 10);
		List<EmployDTO> employPageList = employService.employPageList(page);
		model.addAttribute("employPageList", employPageList);
		model.addAttribute("page", page);
		model.addAttribute("cnt", cnt);
        return "employ/employPageList";
    }
	
	@RequestMapping(value="addEmployForm.do", method = RequestMethod.GET)
    public String addEmployForm(Model model) throws Exception {
        return "employ/addEmployForm";
    }
	
	@RequestMapping(value="addEmploy.do", method = RequestMethod.POST)
    public String addEmploy(EmployDTO employ, Model model) throws Exception {
		employService.addEmploy(employ);
        return "redirect:/employ/list.do";
    }
	
	@RequestMapping(value="addSmartEmployForm.do", method = RequestMethod.GET)
    public String addEmploySmartForm(Model model) throws Exception {
        return "employ/addSmartEmployForm";
    }
	
	@RequestMapping(value="addSmartEmploy.do", method = RequestMethod.POST)
    public String addSmartEmploy(EmployDTO employ, Model model) throws Exception {
		employService.addEmploy(employ);
        return "redirect:/employ/list.do";
    }
}