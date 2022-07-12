package com.ksmstat.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.ksmstat.dto.MemberDTO;

public interface MemberService {
	public List<MemberDTO> memberList() throws Exception;
	public MemberDTO viewMember(String id) throws Exception;
	public void insertMember(MemberDTO mdto) throws Exception;
	public void updateMember(MemberDTO mdto) throws Exception;
	public void deleteMember(String id) throws Exception;
	public MemberDTO loginCheck(MemberDTO mdto) throws Exception;
	public MemberDTO signin(MemberDTO mdto) throws Exception;
	public boolean login(HttpServletRequest request) throws Exception;
	public int idCheck(String id) throws Exception;
}
