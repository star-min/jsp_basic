package kr.go.yeosu.model;

import java.util.Date;

public class CustomerVO {
	private String cid;     //고객아이디
	private String upw;     //고객비밀번호
	private String uname;   //고객명
	private String tel;     //전화번호
	private String email;   //이메일
	private Date birth;     //생년월일
	private	Date regdate;    //가입일
	private	int visited;     //로그인(방문횟수)
	private	int upoint; 	 //고객포인트(5회 방문시 마다 10포인트씩 증가, 이용후기 작성시 마다 100포인트씩 증가)
	private	int urank;       //고객등급(1:최고관리자, 2:일반관리자, 3:VIP회원, 4:우수회원, 9:일반회원)
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public int getUpoint() {
		return upoint;
	}
	public void setUpoint(int upoint) {
		this.upoint = upoint;
	}
	public int getUrank() {
		return urank;
	}
	public void setUrank(int urank) {
		this.urank = urank;
	}
}
