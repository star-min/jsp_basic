package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.PowderVO;
import com.shop.common.JDBCConnection;
import com.shop.common.PaymentVO;

public class PaymentDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public PowderVO callByPay(int pno) {
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
				powder.setPinday(rs.getString("pinday"));
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
		return powder;
	}
	
	public ArrayList<PaymentVO> getPaymentList() {  //관리자용
		ArrayList<PaymentVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from payment";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<PaymentVO>();
			while(rs.next()) {
				PaymentVO vo = new PaymentVO();
				vo.setOno(rs.getInt("ono"));
				vo.setPaytype(rs.getString("paytype"));
				vo.setPayno(rs.getString("payno"));
				vo.setMoney(rs.getInt("money"));
				vo.setSdate(rs.getString("sdate"));
				vo.setPno(rs.getInt("pno"));
				vo.setPamount(rs.getInt("pamount"));
				vo.setHid(rs.getString("hid"));
				vo.setRname(rs.getString("rname"));
				vo.setTel(rs.getString("tel"));
				vo.setAddr1(rs.getString("addr1"));
				vo.setAddr2(rs.getString("addr2"));
				vo.setPostcode(rs.getString("postcode"));
				vo.setTransno(rs.getString("transno"));
				vo.setTransco(rs.getString("transco"));
				vo.setRstatus(rs.getString("rstatus"));
				vo.setRdate(rs.getString("rdate"));
				vo.setMemo(rs.getString("memo"));
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
	public ArrayList<PaymentVO> getPaymentList(String hid) { //일반회원용
		ArrayList<PaymentVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from payment where hid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hid);
			rs = pstmt.executeQuery();
			list = new ArrayList<PaymentVO>();
			while(rs.next()) {
				PaymentVO vo = new PaymentVO();
				vo.setOno(rs.getInt("ono"));
				vo.setPaytype(rs.getString("paytype"));
				vo.setPayno(rs.getString("payno"));
				vo.setMoney(rs.getInt("money"));
				vo.setSdate(rs.getString("sdate"));
				vo.setPno(rs.getInt("pno"));
				vo.setPamount(rs.getInt("pamount"));
				vo.setHid(rs.getString("hid"));
				vo.setRname(rs.getString("rname"));
				vo.setTel(rs.getString("tel"));
				vo.setAddr1(rs.getString("addr1"));
				vo.setAddr2(rs.getString("addr2"));
				vo.setPostcode(rs.getString("postcode"));
				vo.setTransno(rs.getString("transno"));
				vo.setTransco(rs.getString("transco"));
				vo.setRstatus(rs.getString("rstatus"));
				vo.setRdate(rs.getString("rdate"));
				vo.setMemo(rs.getString("memo"));
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
	
	public PaymentVO getPayment(int ono) {	// 결제 정보 불러오기
		PaymentVO payment = new PaymentVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from payment where ono=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ono);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				payment.setOno(rs.getInt("ono"));
				payment.setPaytype(rs.getString("paytype"));
				payment.setPayno(rs.getString("payno"));
				payment.setMoney(rs.getInt("money"));
				payment.setSdate(rs.getString("sdate"));
				payment.setPno(rs.getInt("pno"));
				payment.setPamount(rs.getInt("pamount"));
				payment.setHid(rs.getString("hid"));
				payment.setRname(rs.getString("rname"));
				payment.setTel(rs.getString("tel"));
				payment.setAddr1(rs.getString("addr1"));
				payment.setAddr2(rs.getString("addr2"));
				payment.setPostcode(rs.getString("postcode"));
				payment.setTransno(rs.getString("transno"));
				payment.setTransco(rs.getString("transco"));
				payment.setRstatus(rs.getString("rstatus"));
				payment.setRdate(rs.getString("rdate"));
				payment.setMemo(rs.getString("memo"));
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
		return payment;
	}
	
	
	public int addPayment(PaymentVO vo, int bno) {  //결제 처리
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into payment values((select nvl(max(ono), 0)+1 from payment), ?, ?, ?, sysdate, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPaytype());
			pstmt.setString(2, vo.getPayno());
			pstmt.setInt(3, vo.getMoney());	
			pstmt.setInt(4, vo.getPno()); 
			pstmt.setInt(5, vo.getPamount()); 
			pstmt.setString(6, vo.getHid()); 
			pstmt.setString(7, vo.getRname()); 
			pstmt.setString(8, vo.getTel()); 
			pstmt.setString(9, vo.getAddr1()); 
			pstmt.setString(10, vo.getAddr2()); 
			pstmt.setString(11, vo.getPostcode()); 
			pstmt.setString(12, vo.getTransno()); 
			pstmt.setString(13, vo.getTransco()); 
			pstmt.setString(14, vo.getRstatus()); 
			pstmt.setString(15, vo.getRdate()); 
			pstmt.setString(16, vo.getMemo()); 
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
	
	public int editPayment(PaymentVO vo) {  //배송지 수정
		try {
			conn = JDBCConnection.getConnection();
			sql = "update payment set rname=?, tel=?, addr1=?, addr2=?, postcode=?, memo=? where ono=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getRname());
			pstmt.setString(2, vo.getTel());
			pstmt.setString(3, vo.getAddr1());
			pstmt.setString(4, vo.getAddr2());
			pstmt.setString(5, vo.getPostcode());
			pstmt.setString(6, vo.getMemo());
			pstmt.setInt(7, vo.getOno());
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
	
	public int shippingAssign(PaymentVO vo) {  //택배 배정
		try {
			conn = JDBCConnection.getConnection();
			sql = "update payment set transno=?, transco=?, rstatus=?, rdate=? where ono=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTransno());
			pstmt.setString(2, vo.getTransco());
			pstmt.setString(3, vo.getRstatus());
			pstmt.setString(4, vo.getRdate());
			pstmt.setInt(5, vo.getOno());
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
	
	public int delPayment(int num) {	//결제 정보 삭제 또는 결제 취소
		try {
			conn = JDBCConnection.getConnection();
			sql = "delete from payment where ono=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
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