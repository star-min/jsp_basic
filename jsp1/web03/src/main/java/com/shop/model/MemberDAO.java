package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;

import com.shop.common.JDBCConnection;
import com.shop.common.MemberVO;

public class MemberDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	public int addMember(MemberVO vo) { //회원가입
		String pw = Base64.getEncoder().encodeToString(vo.getHpw().getBytes());
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into human values(?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getHid());
			pstmt.setString(2, pw);
			pstmt.setString(3, vo.getHname());
			pstmt.setString(4, vo.getTel());
			pstmt.setString(5, vo.getAddr1());
			pstmt.setString(6, vo.getAddr2());
			pstmt.setString(7, vo.getPostcode());
			pstmt.setString(8, vo.getEmail());
			pstmt.setString(9, vo.getBirth());
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
	
	public int editMember(MemberVO vo) {  //회원정보수정
		String pw = Base64.getEncoder().encodeToString(vo.getHpw().getBytes());
		try {
			conn = JDBCConnection.getConnection();
			sql = "update human set hpw=?, hname=?, tel=?,  addr1=?, addr2=?, postcode=?, email=?, birth=? where hid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, vo.getHname());
			pstmt.setString(3, vo.getTel());
			pstmt.setString(4, vo.getAddr1());
			pstmt.setString(5, vo.getAddr2());
			pstmt.setString(6, vo.getPostcode());
			pstmt.setString(7, vo.getEmail());
			pstmt.setString(8, vo.getBirth());
			pstmt.setString(9, vo.getHid());
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
	
	public int delMember(String uid) { //회원탈퇴
		try {
			conn = JDBCConnection.getConnection();
			sql = "delete from human where hid=?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
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
	
	public int login(MemberVO vo) {  //로그인
		byte[] pwc; 
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from human where hid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getHid());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pwc = Base64.getDecoder().decode(rs.getString("hpw"));
				String pw = new String(pwc);
				if(vo.getHpw().equals(pw)) { //복호화하여 비교
					cnt = 1;
					rs.close();
					pstmt.close();
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, vo.getHid());
					pstmt.executeUpdate();
				} else {
					cnt = 0;
				}
			} else {
				cnt = 0;
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
		return cnt;
	}
	
	public int idCheck(String uid) { //아이디 중복체크
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from human where hid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cnt = 1;
			} else {
				cnt = 0;
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
		return cnt;
	}
	
	public ArrayList<MemberVO> getMemberList() {  //관리자 회원목록 보기
		ArrayList<MemberVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select hid, hpw, hname, tel, addr1, addr2, postcode, email, birth, to_char(regdate, 'yyyy-MM-dd HH24:mi:ss') as cdate from human";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<MemberVO>();
			while(rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setHid(rs.getString("hid"));
				vo.setHpw(rs.getString("hpw"));
				vo.setHname(rs.getString("hname"));
				vo.setTel(rs.getString("tel"));
				vo.setAddr1(rs.getString("addr1"));
				vo.setAddr2(rs.getString("addr2"));
				vo.setPostcode(rs.getString("postcode"));
				vo.setEmail(rs.getString("email"));
				vo.setBirth(rs.getString("birth"));
				vo.setJoinday(rs.getString("cdate"));
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
	
	public MemberVO getMember(String uid) { //관리자 회원정보 상세보기
		byte[] pwc;
		MemberVO member = new MemberVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select hid, hpw, hname, tel, addr1, addr2, postcode, email, to_char(birth, 'yyyy-MM-dd HH24:mi:ss') as birthday, to_char(joinday, 'yyyy-MM-dd HH24:mi:ss') as cdate from human where hid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				member.setHid(rs.getString("hid"));
				pwc = Base64.getDecoder().decode(rs.getString("hpw"));
				String pw = new String(pwc);
				member.setHpw(pw);
				member.setHname(rs.getString("hname"));
				member.setTel(rs.getString("tel"));
				member.setAddr1(rs.getString("addr1"));
				member.setAddr2(rs.getString("addr2"));
				member.setPostcode(rs.getString("postcode"));
				member.setEmail(rs.getString("email"));
				member.setBirth(rs.getString("birthday"));
				member.setJoinday(rs.getString("cdate"));
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
	public ArrayList<MemberVO> JSONMemberList() {  //관리자 회원목록을 JSON으로 내보내기
		ArrayList<MemberVO> list = null;
		byte[] pwc;  //복호화할 암호저장
		try {
			conn = JDBCConnection.getConnection();
			sql = "select hid, hpw, hname, tel, addr1, addr2, postcode, email, birth, to_char(regdate, 'yyyy-MM-dd HH24:mi:ss') as cdate from human";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<MemberVO>();
			while(rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setHid(rs.getString("userid"));
				pwc = Base64.getDecoder().decode(rs.getString("hpw")); //String을 복호화하여 바이트 배열로 저장
				String pw = new String(pwc); //바이트 배열을 문자열(String)으로 
				vo.setHpw(pw);
				vo.setHname(rs.getString("hname"));
				vo.setTel(rs.getString("tel"));
				vo.setAddr1(rs.getString("addr1"));
				vo.setAddr2(rs.getString("addr2"));
				vo.setPostcode(rs.getString("postcode"));
				vo.setEmail(rs.getString("email"));
				vo.setBirth(rs.getString("birthday"));
				vo.setJoinday(rs.getString("cdate"));
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
}