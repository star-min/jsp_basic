package com.ksmstat.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.ksmstat.dao.MemberDAO;
import com.ksmstat.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	HttpSession session;
	
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	MemberDAO memberDao;

	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	@Override
	public MemberDTO viewMember(String id) throws Exception {
		return memberDao.viewMember(id);
	}

	@Override
	public void insertMember(MemberDTO mdto) throws Exception {
		memberDao.insertMember(mdto);
	}

	@Override
	public void updateMember(MemberDTO mdto) throws Exception {
		memberDao.updateMember(mdto);
	}

	@Override
	public void deleteMember(String id) throws Exception {
		memberDao.deleteMember(id);
	}

	@Override
	public MemberDTO loginCheck(MemberDTO mdto) throws Exception {
		return memberDao.loginCheck(mdto);
	}

	@Override
	public MemberDTO signin(MemberDTO mdto) throws Exception {
		return memberDao.signin(mdto);
	}
	
	@Override
	public boolean login(HttpServletRequest request) throws Exception {	
		HttpSession session = request.getSession();
		boolean loginSuccess = false;
		MemberDTO mdto = new MemberDTO();
		
		mdto.setId(request.getParameter("id"));
		mdto.setPwd(request.getParameter("pwd"));
		
		MemberDTO login = memberDao.login(mdto);
		
		loginSuccess =  pwdEncoder.matches(mdto.getPwd(), login.getPwd());
		if(login != null && loginSuccess==true) {
			session.setAttribute("member", login);
			session.setAttribute("sid", login.getId());
			loginSuccess = true;
		}
		return loginSuccess;
	}
	
	@Override
	public int idCheck(String id) throws Exception {
		return memberDao.idCheck(id);
	}
}
