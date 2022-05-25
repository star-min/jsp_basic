package mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
public class SMTPAuthenticatior extends Authenticator{
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("zxzx00262@naver.com","kk31583138");
	}
}
