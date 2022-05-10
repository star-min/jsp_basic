package kr.go.sokcho.model;

import java.util.Date;

public class ReviewVO {
	private int rno;
	private String rtitle;
	private String rplace;
	private Date rtodate;
	private Date rfromdate;
	private String icontent;
	private String ipic1;
	private String ipic2;
	private String rid;
	private String rpw;
	private Date rdate;
    private int viewcnt;
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public String getRplace() {
		return rplace;
	}
	public void setRplace(String rplace) {
		this.rplace = rplace;
	}
	public Date getRtodate() {
		return rtodate;
	}
	public void setRtodate(Date rtodate) {
		this.rtodate = rtodate;
	}
	public Date getRfromdate() {
		return rfromdate;
	}
	public void setRfromdate(Date rfromdate) {
		this.rfromdate = rfromdate;
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
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRpw() {
		return rpw;
	}
	public void setRpw(String rpw) {
		this.rpw = rpw;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
    
}
