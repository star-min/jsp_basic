package com.shop.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.JDBCConnection;
import com.shop.common.MemberVO;

public class MemberDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	public ArrayList<MemberVO> getMemberList() {
		ArrayList<MemberVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from human";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<MemberVO>();
			while(rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setHid(rs.getString("hid"));
				vo.setHpw(rs.getString("hpw"));
				vo.setHname(rs.getString("hname"));
				vo.setTel(rs.getString("tel"));
				vo.setEmail(rs.getString("eamil"));
				vo.setBirth(rs.getDate("birth"));
				vo.setJoinday(rs.getDate("joinday"));
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
	public MemberVO getMember(int seq) {
		MemberVO member = new MemberVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from human where hid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				member.setHid(rs.getString("hid"));
				member.setHpw(rs.getString("hpw"));
				member.setHname(rs.getString("hname"));
				member.setTel(rs.getString("tel"));
				member.setEmail(rs.getString("eamil"));
				member.setBirth(rs.getDate("birth"));
				member.setJoinday(rs.getDate("joinday"));
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
		return member;
	}
//	public ArrayList<MemberVO> getConditionSearch(String condition, String keyword) {
//		ArrayList<MemberVO> memberList = null; 
//		try {
//			conn = JDBCConnection.getConnection();		// 아이디 아니면 이름을 검색해서 찾아내는식
//			if(condition.equals("hname")) {
//				sql = "select * from human where hname like ?";
//				pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1, "%"+keyword+"%");
//			} else {
//				sql = "select * from human where hid like ?";
//				pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1, "%"+keyword+"%");
//			}
//			rs = pstmt.executeQuery();
//			memberList = new ArrayList<MemberVO>();
//			while(rs.next()) {
//				MemberVO mem = new MemberVO();
//				mem.setHid(rs.getString("hid"));
//				mem.setHpw(rs.getString("hpw"));
//				mem.setHname(rs.getString("hname"));
//				mem.setTel(rs.getString("tel"));
//				mem.setEmail(rs.getString("eamil"));
//				mem.setBirth(rs.getDate("birth"));
//				mem.setJoinday(rs.getDate("joinday"));
//				memberList.add(mem);
//			}
//		} catch(ClassNotFoundException e) {
//			System.out.println("드라이버 로딩이 실패되었습니다.");
//			e.printStackTrace();
//		} catch(SQLException e) {
//			System.out.println("SQL구문이 처리되지 못했습니다.");
//			e.printStackTrace();
//		} catch(Exception e) {
//			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
//			e.printStackTrace();
//		} finally {
//			JDBCConnection.close(rs, pstmt, conn);
//		}	
//		return memberList; 
//	}
	public int addMember(MemberVO vo) {
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into human values(?, ?, ?, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getHid());
			pstmt.setString(2, vo.getHpw());
			pstmt.setString(3, vo.getHname());
			pstmt.setString(4, vo.getTel());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getBirth());
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
	public int delMember(MemberVO vo) {
		try {
			conn = JDBCConnection.getConnection();
			sql = "delete from human where seq=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getHid());
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
}
