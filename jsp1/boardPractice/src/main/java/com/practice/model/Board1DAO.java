package com.practice.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.practice.common.Board1VO;
import com.practice.common.JDBCConnection;

public class Board1DAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	// 게시판 목록
	public ArrayList<Board1VO> getBoardList() {
		ArrayList<Board1VO> list = null;
		// 목록을 불러오는 것이기 때문에 VO를 ArrayList로 가져온다.
		// ArrayList는 객체가 추가되어 용량이 늘어나면 가변적으로 늘어나며 List인터페이스에 상속받아 사용되고 Collection프레임 워크의 일부이며 java.util에 속해있다.
		try {
			conn = JDBCConnection.getConnection();
			// JDBCConection 에 선언해 둔 DB 주소와 연동한다.
			sql = "select * from board1";
			pstmt = conn.prepareStatement(sql);
			// prepareStatement 는 컴파일된 sql문을 DBMS에 전달한다.
			rs = pstmt.executeQuery();
			// executeQuery 는  ResultSet의 값을 반환한다 Select구문을 수행할때 사용한다.
			list = new ArrayList<Board1VO>();
			while(rs.next()) {
				Board1VO vo = new Board1VO();
				vo.setSeq(rs.getInt("seq"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setWriter(rs.getString("writer"));
				vo.setRegdate(rs.getString("regdate"));
				list.add(vo);
				System.out.println("DAO작동완료");
			}
			// 예외처리
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었 습니다.");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, pstmt, conn);
			// JDBCConnection의 rs, pstmt, conn을 닫아줘야 한다.
		}
		
		return list;
	}
	
	//게시글 불러오기
	public Board1VO getBoard(int seq) {
		Board1VO board = new Board1VO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from board where seq=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			// setInt(1, seq) 는 sql구문의 1번째 의 값에 을 뜻한다.
			rs = pstmt.executeQuery();
			if(rs.next()) {
				board.setSeq(rs.getInt("seq"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setWriter(rs.getString("writer"));
				board.setRegdate(rs.getString("regdate"));
				// VO 안의 객체에 값을 넣어준다.
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
		return board;
	}
	
	// 게시판 작성
	public int addBoard(Board1VO vo) {
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into board1 values ((select nvl(max(seq), 0)+1 from board1), ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getWriter());
			cnt = pstmt.executeUpdate();
			// executeUpdate 는 수행결과로 int타입을 반환하며 Select를 제외한 다른구문들에 사용된다.
			
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
	
	// 게시판 수정
	public int editBoard(Board1VO vo) {
		try {
			conn = JDBCConnection.getConnection();
			sql = "update board1 set title=?, content=?, regdate=sysdate where = seq=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setInt(3, vo.getSeq());
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
	
	// 게시판 삭제
	public int delBoard(int num) {
		// executeUpdate는 delete 구문을 이용할때 -1값을 전달하기 때문에 int만 선언해도 문제없다.
		try {
			conn = JDBCConnection.getConnection();
			sql = "delete from board1 where seq=?";
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
	
	// 게시글 검색
	public ArrayList<Board1VO> getConditionSearch(String condition, String keyword) {
		ArrayList<Board1VO> boardList = null;
		try {
			conn = JDBCConnection.getConnection();
			if(condition.equals("title")) {
				// 제목을 기준으로 검색
				sql = "select * from board1 where title like ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+keyword+"%");
			} else {
				sql = "select * from board1 where content like ?";
				// 내용을 기준으로 검색
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+keyword+"%");
			}
			rs = pstmt.executeQuery();
			boardList = new ArrayList<Board1VO>();
			while(rs.next()) {
				Board1VO board = new Board1VO();
				board.setSeq(rs.getInt("seq"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("Content"));
				board.setWriter(rs.getString("writer"));
				board.setRegdate(rs.getString("regdate"));
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
		return boardList; 
	}
}
