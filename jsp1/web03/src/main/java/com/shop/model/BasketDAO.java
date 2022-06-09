package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.BasketDetailVO;
import com.shop.common.BasketVO;
import com.shop.common.JDBCConnection;

public class BasketDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public ArrayList<BasketVO> getAdminBasketList() {
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
				vo.setBdate(rs.getString("bdate"));
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
	
	public ArrayList<BasketVO> getBasketList(String hid) {
		ArrayList<BasketVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from basket where hid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hid);
			rs = pstmt.executeQuery();
			list = new ArrayList<BasketVO>();
			while(rs.next()) {
				BasketVO vo = new BasketVO();
				vo.setBno(rs.getInt("bno"));
				vo.setHid(rs.getString("hid"));
				vo.setPno(rs.getInt("pno"));
				vo.setPtaste(rs.getString("ptaste"));
				vo.setPamount(rs.getInt("pamount"));
				vo.setBdate(rs.getString("bdate"));
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
	

	public BasketDetailVO getBasket(int bno) {
		BasketDetailVO bs = new BasketDetailVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select a.bno as bno, a.hid as hid, a.pno as pno, a.ptaste as ptaste, a.pamount as pamount, a.bdate as bdate, ";
			sql = sql + "b.pgory as pgory, b.pname as pname, b.pprice as pprice, b.pcomment as pcomment, b.pimage as pimage from ";
			sql = sql + "basket a inner join powder b on a.pno=b.pno where a.bno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bs.setBno(rs.getInt("bno"));
				bs.setHid(rs.getString("hid"));
				bs.setPno(rs.getInt("pno"));
				bs.setPtaste(rs.getString("ptaste"));
				bs.setPamount(rs.getInt("pamount"));
				bs.setBdate(rs.getString("bdate"));
				bs.setPgory(rs.getString("pgory"));
				bs.setPname(rs.getString("pname"));
				bs.setPprice(rs.getInt("pprice"));
				bs.setPcomment(rs.getString("pcomment"));
				bs.setPimage(rs.getString("pimage"));
				System.out.println(rs.getInt("bno")+", "+rs.getString("hid"));
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
			JDBCConnection.close(pstmt, conn);
		}
		return bs;
	}
	

	public int addBasket(BasketDetailVO vo) {
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into basket values((select nvl(max(bno), 0)+1 from basket), ?, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getHid());
			pstmt.setInt(2, vo.getPno());
			pstmt.setString(3, vo.getPtaste());
			pstmt.setInt(4, vo.getPamount());
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
	
	public int editBasket(BasketVO vo) {
		try {
			conn = JDBCConnection.getConnection();
			sql = "update basket set ptaste=?, pamount=?, bdate=sysdate where bno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPtaste());
			pstmt.setInt(2, vo.getPamount());
			pstmt.setInt(3, vo.getBno());
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
	
	public int delBasket(int bno) {
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

}
