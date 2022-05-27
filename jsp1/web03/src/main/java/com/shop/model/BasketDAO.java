package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.BasketVO;
import com.shop.common.JDBCConnection;

public class BasketDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public ArrayList<BasketVO> getBasketList() {	// 장바구니 목록
		ArrayList<BasketVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from basket";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<BasketVO>();
			while(rs.next()) {
				BasketVO vo = new BasketVO();
				vo.setBno(rs.getInt("bno"));
				vo.setHid(rs.getString("hid"));
				vo.setPno(rs.getInt("pno"));
				vo.setPtaste(rs.getString("ptaste"));
				vo.setPamount(rs.getInt("pamount"));
				vo.setBdate(rs.getDate("bdate"));
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
	
	public BasketVO getBasket(int bno) {	//장바구니 상세보기 필요할지모르겠지만 일단 만들었음
		BasketVO basket = new BasketVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from basket where bno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				basket.setBno(rs.getInt("bno"));
				basket.setHid(rs.getString("hid"));
				basket.setPno(rs.getInt("pno"));
				basket.setPtaste(rs.getString("ptaste"));
				basket.setPamount(rs.getInt("pamount"));
				basket.setBdate(rs.getDate("bdate"));
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
		return basket;
	}
	
	public int editBasket(BasketVO vo) {	// 장바구니 수정
		try {
			conn = JDBCConnection.getConnection();
			sql = "update basket set pno=?, ptaste=?, pamount=?, bdate=sysdate where bno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getPno());
			pstmt.setString(2, vo.getPtaste());
			pstmt.setInt(3, vo.getPamount());
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
	
	public int delBasket(int bno) {		//장바구니 삭제
		try {
			conn = JDBCConnection.getConnection();
			sql = "delete from basket where bno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
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
	
//	public int addBoard(BasketVO vo) {		장바구니 생성인데 이게 필요한가?
//		try {
//			conn = JDBCConnection.getConnection();
//			sql = ""
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
//			JDBCConnection.close(pstmt, conn);
//		}
//		return cnt;
//	}
}
