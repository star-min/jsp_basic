package kr.go.yeosu.model;

import java.util.Date;

public class NoticeVO {
	private	int nno;			//글번호
	private	String ntitle;		//글제목
	private	String nconetnt;	//글내용
	private	String npic;		//글관련이미지
	private	String ndata;		//글관련자료
	private	Date resdate;		//작성일
    private	String nname;		//작성자 
    private	int viewcnt;		//읽은 횟수
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNconetnt() {
		return nconetnt;
	}
	public void setNconetnt(String nconetnt) {
		this.nconetnt = nconetnt;
	}
	public String getNpic() {
		return npic;
	}
	public void setNpic(String npic) {
		this.npic = npic;
	}
	public String getNdata() {
		return ndata;
	}
	public void setNdata(String ndata) {
		this.ndata = ndata;
	}
	public Date getResdate() {
		return resdate;
	}
	public void setResdate(Date resdate) {
		this.resdate = resdate;
	}
	public String getNname() {
		return nname;
	}
	public void setNname(String nname) {
		this.nname = nname;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
}
