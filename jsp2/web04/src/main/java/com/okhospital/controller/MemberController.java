package com.okhospital.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.okhospital.dto.MemberDTO;
import com.okhospital.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	//private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	//다음 서비스 작업 객체를 주입
	@Autowired
	MemberService memberService;
	
	@RequestMapping("list.do")
	public String memberList(Model model) throws Exception {
		List<MemberDTO> memberList = memberService.memberList();
		model.addAttribute("memberList", memberList);
		return "member/memberList";
	}
	
	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String memberRead(@RequestParam String userid, Model model) throws Exception {
		MemberDTO member = memberService.viewMember(userid);
		model.addAttribute("member", member);
		return "member/memberRead";
	}

	@RequestMapping("joinForm.do")  //board/write_form  -> board/boardWriteForm.jsp
	public String memberWriteForm(Model model) throws Exception {
		return "member/joinForm";
	}
	
	@RequestMapping("loginForm.do")  //board/write_form  -> board/boardWriteForm.jsp
	public String memberLoginForm(Model model) throws Exception {
		return "member/loginForm";
	}
	
	@RequestMapping(value="join.do", method = RequestMethod.POST)
	public String memberWrite(MemberDTO mdto, Model model) throws Exception {
		memberService.insertMember(mdto);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String memberUpdate(MemberDTO mdto, Model model) throws Exception {
		memberService.updateMember(mdto);
		return "redirect:list.do";
	}

	@RequestMapping(value="delete.do", method = RequestMethod.GET)
	public String memberDelete(@RequestParam String userid, Model model, HttpSession session) throws Exception {
		memberService.deleteMember(userid);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="login.do", method = RequestMethod.GET)
	public String memberLogin(@RequestParam String userid, String userpw, Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		MemberDTO dto = new MemberDTO();
		dto = memberService.loginCheck(userid, userpw);
		if(dto==null) {
			session.setAttribute("member", null);
			model.addAttribute("msg", "로그인 실패");
			rttr.addFlashAttribute("message", "로그인 실패 메시지");
			return "redirect:loginForm.do"; //로그인 실패
		} else {
			session.setAttribute("member", dto);
			return "redirect:/";	
		}
	}
	
	@RequestMapping("logout.do")
	public String memberLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
}