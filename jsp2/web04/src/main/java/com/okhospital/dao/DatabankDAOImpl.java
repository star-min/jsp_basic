package com.okhospital.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.okhospital.dto.DatabankDTO;

@Service
public class DatabankDAOImpl {

	@Autowired
	SqlSession sqlSession;  //boardMapper.xml의 내용을 include한 것 같은 효과가 있음
	
	
	@Override
	public List<DatabankDTO> databankList() throws Exception {
		return sqlSession.selectList("databank.databankList");
	}

	@Override
	public DatabankDTO databankRead(int datano) throws Exception {
		return sqlSession.selectOne("databank.dataBankRead", datano);
	}

	@Override
	public void dataBankWrite(DatabankDTO ddto) throws Exception {
		sqlSession.insert("databank.databankWrite", ddto);
	}

	@Override
	public void dataBankUpdate(DatabankDTO ddto) throws Exception {
		sqlSession.update("databank.databankUpdate", ddto);
	}

	@Override
	public void dataBankDelete(int datano) throws Exception {
		sqlSession.delete("databank.databankDelete", datano);
	}
}
