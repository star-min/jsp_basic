package com.company.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.company.shop.vo.MemberVO;

@Mapper
public interface MemberDAO {
	public List<MemberVO> selectListMember(MemberVO memberVO) throws Exception;
	public MemberVO getMember(String userid) throws Exception;
	public void joinMember(MemberVO memberVO) throws Exception;
	public void updateMember(MemberVO memberVO) throws Exception;
	public void deleteMember(MemberVO memberVO) throws Exception;
}
