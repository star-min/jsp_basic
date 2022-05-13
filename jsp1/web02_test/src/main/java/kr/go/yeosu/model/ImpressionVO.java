package kr.go.yeosu.model;

import java.util.Date;

public class ImpressionVO {
    private int ino;		//이용후기번호
    private String ititle;	//이용후기 제목
    private String iplace;	//이용후기 장소명
    private Date itodate;	//이용시작일
    private Date ifromdate;	//이용종료일
    private String icontent;//이용소감
    private String ipic1;	//방문사진1
    private String ipic2;	//방문사진2
    private String cid;		//작성자
    private String ipw;		//작성글비밀번호
    private Date idate;		//작성일
    private int viewcnt;	//열람횟수 
	public int getIno() {
		return ino;
	}
	public void setIno(int ino) {
		this.ino = ino;
	}
	public String getItitle() {
		return ititle;
	}
	public void setItitle(String ititle) {
		this.ititle = ititle;
	}
	public String getIplace() {
		return iplace;
	}
	public void setIplace(String iplace) {
		this.iplace = iplace;
	}
	public Date getItodate() {
		return itodate;
	}
	public void setItodate(Date itodate) {
		this.itodate = itodate;
	}
	public Date getIfromdate() {
		return ifromdate;
	}
	public void setIfromdate(Date ifromdate) {
		this.ifromdate = ifromdate;
	}
	public String getIcontent() {
		return icontent;
	}
	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}
	public String getIpic1() {
		return ipic1;
	}
	public void setIpic1(String ipic1) {
		this.ipic1 = ipic1;
	}
	public String getIpic2() {
		return ipic2;
	}
	public void setIpic2(String ipic2) {
		this.ipic2 = ipic2;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getIpw() {
		return ipw;
	}
	public void setIpw(String ipw) {
		this.ipw = ipw;
	}
	public Date getIdate() {
		return idate;
	}
	public void setIdate(Date idate) {
		this.idate = idate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
}
