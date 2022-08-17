package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import VO.MemberVO;

public class MemberDAO {
	private Connection conn = null;
	private PreparedStatement pstat = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	// 홈쇼핑 회원등록
	public int addMember(MemberVO vo)throws Exception {
		try{
			conn = JDBCConnection.getConnection();
			sql = "insert into member_tbl_02 values((select nvl(max(custno), 0)+1 from member_tbl_02),?,?,?,sysdate,?,?)";
			// 1.custname, 2.phone, 3.address, 4.grade, 5.city
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, vo.getCustname());
			pstat.setString(2, vo.getPhone());
			pstat.setString(3, vo.getAddress());
			pstat.setString(4, vo.getGrade());
			pstat.setString(5, vo.getCity());
			cnt = pstat.executeUpdate();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(pstat, conn);
		}
		return cnt;
	}
}
