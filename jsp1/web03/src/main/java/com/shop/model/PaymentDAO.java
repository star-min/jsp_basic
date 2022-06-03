package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shop.common.JDBCConnection;
import com.shop.common.PaymentVO;

public class PaymentDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public int addPayment(PaymentVO vo) {
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from payment";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getOno());
			pstmt.setString(2, vo.getPaytype());
			pstmt.setString(3, vo.getPayno());
			pstmt.setInt(4, vo.getMoney());
			pstmt.setString(5, vo.getSdate());
			pstmt.setInt(6, vo.getPno());
			pstmt.setInt(7, vo.getPamount());
			pstmt.setString(8, vo.getHid());
			pstmt.setString(9, vo.getRname());
			pstmt.setString(10, vo.getTel());
			pstmt.setString(11, vo.getAddr1());
			pstmt.setString(12, vo.getAddr2());
			pstmt.setString(13, vo.getPostcode());
			pstmt.setString(14, vo.getTransno());
			pstmt.setString(15, vo.getTransco());
			pstmt.setString(16, vo.getRstatus());
			pstmt.setString(17, vo.getRdate());
			pstmt.setString(18, vo.getMemo());
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
	
	public PaymentVO getPayment(String sid) {		//결제 상세보기
		PaymentVO list = new PaymentVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select ";
			pstmt = conn.prepareStatement(sid);
			pstmt.setString(1, sid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				list.setOno(rs.getInt("ono"));
				list.setPaytype(rs.getString("paytype"));
				list.setPayno(rs.getString("payno"));
				list.setMoney(rs.getInt("money"));
				list.setSdate(rs.getString("sdate"));
				list.setPno(rs.getInt("pamount"));
				list.setHid(rs.getString("hid"));
				list.setRname(rs.getString("rname"));
				list.setTel(rs.getString("tel"));
				list.setAddr1(rs.getString("addr1"));
				list.setAddr2(rs.getString("addr2"));
				list.setPostcode(rs.getString("postcode"));
				list.setTransno(rs.getString("transno"));
				list.setTransco(rs.getString("transco"));
				list.setRstatus(rs.getString("rstatus"));
				list.setRdate(rs.getString("rdate"));
				list.setMemo(rs.getString("memo"));
				
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
		return list;
	}
}
