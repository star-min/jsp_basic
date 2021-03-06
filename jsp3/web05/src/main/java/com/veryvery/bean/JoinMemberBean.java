package com.veryvery.bean;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class JoinMemberBean {
	
	@Size(min=2, max=12, message="길이는 2~12 글자 이여야만 합니다.")
	@Pattern(regexp="^([A-Za-z])+([0-9])+$", message="아이디는 대소문자와 숫자의 조합")
	private String id;
	
	@Size(min=4, max=12, message="길이는 2~12 글자 이여야만 합니다.")
	@Pattern(regexp="^([A-Za-z])+([0-9])+$", message="비밀번호는는 대소문자와 숫자의 조합")
	private String pwd;
	
	@Size(min=4, max=12, message="길이는 2~12 글자 이여야만 합니다.")
	@Pattern(regexp="^([A-Za-z])+([0-9])+$", message="비밀번호는는 대소문자와 숫자의 조합")
	private String pwd2;
	
	@Size(min=4, max=10, message="이름 길이는 2~10 글자 이여야만 합니다.")
	private String uname;
	private String birth;
	private String phone;
	private String email;
	private String addr1;
	private String addr2;
	private String postcode;
	
	
}
