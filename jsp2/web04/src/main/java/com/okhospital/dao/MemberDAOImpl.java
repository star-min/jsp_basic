package com.okhospital.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.okhospital.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}

	@Override
	public MemberDTO viewMember(String userid) throws Exception {
		return sqlSession.selectOne("member.viewMember", userid);
	}

	@Override
	public void insertMember(MemberDTO mdto) throws Exception {
		sqlSession.insert("member.insertMember", mdto);
	}

	@Override
	public void updateMember(MemberDTO mdto) throws Exception {
		sqlSession.update("member.updateMember", mdto);
	}

	@Override
	public void deleteMember(String userid) throws Exception {
		sqlSession.delete("member.deleteMember", userid);
	}

	@Override
	public MemberDTO loginCheck(String userid, String userpw) throws Exception {
		MemberDTO mdto = new MemberDTO();
		Map<String, String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("userpw", userpw);
		mdto = sqlSession.selectOne("member.loginCheck", map);
		return mdto;
	}

	@Override
	public int idCheck(String userid) throws Exception {
		return sqlSession.selectOne("member.idCheck", userid);
	}
}