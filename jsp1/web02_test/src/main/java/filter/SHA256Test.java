package filter;

import java.security.NoSuchAlgorithmException;
//암호화 테스트 케이스
public class SHA256Test {
	public static void main(String[] args) throws NoSuchAlgorithmException {
		String pwd = "7777";
		String cryPwd = SHA256.encrypt(pwd);
		System.out.println(pwd+" -> "+cryPwd);
		System.out.println("글자수 : "+cryPwd.length());
	}
}