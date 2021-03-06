package com.veryvery.test;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.veryvery.dto.MemberDTO;
import com.veryvery.service.MemberService;

import lombok.extern.log4j.Log4j;
@Log4j
@Controller
public class ControllerTest2 {

	@Autowired
	ServiceTest2 serviceTest;
	
	@Autowired
	MemberService memberService;
		
	@Test
	public void test() {
		log.info("Controller Test~!");
		System.out.println("Controller Test~!");
	}
	
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public String test2(MemberDTO sample, Model model) {
		int count = serviceTest.sampleCount();
		model.addAttribute("cnt", count);
		List<MemberDTO> sampleList = serviceTest.sampleList();
		model.addAttribute("sampleList", sampleList);
		return "test";
	}
	
	@Test
	public void test2() throws Exception {
		MemberDTO member = new MemberDTO();
		member.setId("admin");
		member.setPwd("1234");
		System.out.println("Controller id : "+member.getId());
		boolean login = memberService.loginMemberTest(member);
		if(login == true) {
			System.out.println("로그인 성공");
		} else {
			System.out.println("로그인 실패");
		}
	}
	
}