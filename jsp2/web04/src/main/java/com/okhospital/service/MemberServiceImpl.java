package com.okhospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.okhospital.dao.MemberDAO;
import com.okhospital.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDao;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	@Override
	public MemberDTO viewMember(String userid) throws Exception {
		return memberDao.viewMember(userid);
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
	public void deleteMember(String userid) throws Exception {
		memberDao.deleteMember(userid);
	}

	@Override
	public MemberDTO loginCheck(String userid, String userpw) throws Exception {
		return memberDao.loginCheck(userid, userpw);
	}

	@Override
	public int idCheck(String userid) throws Exception {
		return memberDao.idCheck(userid);
	}
}