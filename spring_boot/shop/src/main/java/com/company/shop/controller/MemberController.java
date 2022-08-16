package com.company.shop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.shop.service.MemberService;
import com.company.shop.vo.MemberVO;

@Controller
@RequestMapping("/member/")
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@ResponseBody
	@RequestMapping("jsonList.do")
	public List<MemberVO> selectJsonListMember(@ModelAttribute("searchVO") MemberVO memberVO, ModelMap model) throws Exception {
		List<MemberVO> mList = memberService.selectListMember(memberVO);
		return mList;
	}
	
	
	@ResponseBody
	@RequestMapping(value="getJsonMember.do", method=RequestMethod.GET)
	public MemberVO getJsonMember(@RequestParam("userid") String userid, ModelMap model) throws Exception {
			MemberVO member = memberService.getMember(userid);
			return member;
	}
	
	@ResponseBody
	@RequestMapping(value="getJsonMember2/{userid}", method=RequestMethod.GET)
	public MemberVO getMember2(@PathVariable("userid") String userid, ModelMap model) throws Exception {
			MemberVO member = memberService.getMember(userid);
			return member;
	}
	
	@RequestMapping("list.do")
	public String selectListMember(@ModelAttribute("searchVO") MemberVO memberVO, ModelMap model) throws Exception {
		List<MemberVO> mList = memberService.selectListMember(memberVO);
		model.addAttribute("mList" ,mList);
		return "memberList";
	}
	
	@RequestMapping(value="getMember/{userid}", method=RequestMethod.GET)
	public String getMember(@PathVariable("userid") String userid, ModelMap model) throws Exception {
		MemberVO member = memberService.getMember(userid);
		model.addAttribute("member", member);
		return "getMember";
	}
	
	@GetMapping("join.do")
	public String joinForm(Model model) {
		model.addAttribute("member", new MemberVO());
		return "joinForm";
	}
	
	@PostMapping("joinPro.do")
	public String joinPro(@ModelAttribute("member") MemberVO member, RedirectAttributes rttr) throws Exception {
		String userid = member.getUserid();
		MemberVO mem = memberService.getMember(userid);
		
		if(mem!=null) {
			rttr.addAttribute("msg", "해당 아이디가 이미 존재하여 가입하실 수 없습니다.");
		} else {
			rttr.addAttribute("msg", "가입 성공~!");
			memberService.joinMember(member);
		}
		return "redirect:/";
	}
	
	@GetMapping("login.do")
	public String loginForm(Model model) {
		model.addAttribute("member", new MemberVO());
		return "loginForm";
	}
	
	@PostMapping("loginPro.do")
	public String loginPro(@ModelAttribute("member") MemberVO member, HttpSession session, RedirectAttributes rttr) throws Exception {
		String userid = member.getUserid();
		String pwd = member.getPwd();
		MemberVO mem = memberService.getMember(userid);
		if(mem==null) {
			rttr.addAttribute("msg", "해당 아이디의 회원이 존재하지 않음");
			return "loginFailure";
		} else if (mem!=null && mem.getPwd().equals(pwd)) {
			rttr.addAttribute("msg", "로그인 성공~!");
			session.setAttribute("ses", mem);
			return "redirect:/";
		} else {
			rttr.addAttribute("msg", "비밀번호가 다릅니다.");
		}
		return "loginFailure";
	}
}
