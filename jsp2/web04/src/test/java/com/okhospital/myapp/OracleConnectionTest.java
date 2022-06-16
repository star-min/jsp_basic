package com.okhospital.myapp;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.okhospital.base.HomeController;

public class OracleConnectionTest {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//DB연결 변수
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "scott";
	private static final String PW = "tiger";
	
	@Test
	public void oracleConnectionTest() throws Exception {
		Class.forName(DRIVER);	//드라이버 로딩
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PW);
			logger.info("오라클이 정상적으로 연결되었습니다.");
		} catch(Exception e) {
			e.printStackTrace();
		}
		//fail("Not yet implemented");
	}
}