package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.BoardVO;
import com.shop.common.JDBCConnection;
import com.shop.common.MemberVO;
import com.shop.common.PowderVO;

public class PowderDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public int insertPowder(PowderVO vo) {	// 보충제 추가
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into powder values (?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getPno());
			pstmt.setString(2, vo.getPgory());
			pstmt.setString(3, vo.getPname());
			pstmt.setInt(4, vo.getPprice());
			pstmt.setString(5, vo.getPtaste());
			pstmt.setInt(6, vo.getPamount());
			pstmt.setString(7, vo.getPcomment());
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(pstmt, conn);
		}
		return cnt;
	}
	public ArrayList<PowderVO> getPowderList() {		// 보충제 목록 불러오기
		ArrayList<PowderVO> list = new ArrayList<PowderVO>();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from powder";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<PowderVO>();
			while(rs.next()) {
				PowderVO vo = new PowderVO();
				vo.setPno(rs.getInt("pno"));
				vo.setPgory(rs.getString("pgory"));
				vo.setPname(rs.getString("pname"));
				vo.setPprice(rs.getInt("pprice"));
				vo.setPtaste(rs.getString("ptaste"));
				vo.setPamount(rs.getInt("pamount"));
				vo.setPcomment(rs.getString("pcomment"));
				vo.setPimage(rs.getString("pimage"));
				vo.setPinday(rs.getDate("pinday"));
				list.add(vo);
			}
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, pstmt, conn);
		}
		return list;
	}
	public PowderVO getPowder(int pno) {	// 보충제 상세 보기
		PowderVO powder = new PowderVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from powder where pno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				powder.setPno(rs.getInt("pno"));
				powder.setPgory(rs.getString("pgory"));
				powder.setPname(rs.getString("pname"));
				powder.setPprice(rs.getInt("pprice"));
				powder.setPtaste(rs.getString("ptaste"));
				powder.setPamount(rs.getInt("pamount"));
				powder.setPcomment(rs.getString("pcomment"));
				powder.setPimage(rs.getString("pimage"));
				powder.setPinday(rs.getDate("pinday"));
			}
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, pstmt, conn);
		}
		return powder;
	}

	public int updatePowder(PowderVO vo) {		// 보충제 수정
		try {
			conn = JDBCConnection.getConnection();
			sql = "update powder set pgory=?, pname=?, pprice=?, ptaste=?, pamount=?, pcomment=?, pimage=?, pinday=sysdate where pno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPgory());
			pstmt.setString(2, vo.getPname());
			pstmt.setInt(3, vo.getPprice());
			pstmt.setString(4, vo.getPtaste());
			pstmt.setInt(5, vo.getPamount());
			pstmt.setString(6, vo.getPcomment());
			pstmt.setInt(7, vo.getPno());
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(pstmt, conn);
		}
		return cnt;
	}
	public int deletePowder(int pno) {		// 보충제 삭제
		try {
			conn = JDBCConnection.getConnection();
			sql = "delete from powder where pno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(pstmt, conn);
		}
		return cnt;
	}
	
	public ArrayList<PowderVO> getConditionSearch(String condition, String keyword){	// 보충제 검색하기
		ArrayList<PowderVO> powderlist = new ArrayList<PowderVO>();
		
		return powderlist;
	}
}
