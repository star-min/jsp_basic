package filter;

import java.security.NoSuchAlgorithmException;

public class SHA256test {
	public static void main(String[] args) throws NoSuchAlgorithmException {
		String pwd = "123123";
		String cryPwd = SHA256.encrypt(pwd);
		System.out.println(pwd+" -> "+cryPwd);
	}
}