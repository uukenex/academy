package com.example.util;

import javax.mail.PasswordAuthentication;
import org.springframework.beans.factory.annotation.Autowired;



//이메일을 전송하는 관리자 계정 등록
public class AuthenticatorUtil extends javax.mail.Authenticator {
	
	
	public PasswordAuthentication getPasswordAuthentication() {
		
		// 네이버나 Gmail 사용자 계정 설정.
		// Gmail의 경우 @gmail.com을 제외한 아이디만 입력한다.
		return new PasswordAuthentication("ljs921205", "a1568476");
	}
}