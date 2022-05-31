package com.shop.common;

import java.util.Date;

public class BasketVO {
	private int bno;		// 장바구니 번호
	private String hid;		// 사용자 아이디
	private int pno;		// 제품 번호
	private String ptaste;	// 제품 맛
	private int pamount;	// 제품 개수
	private String bdate;		// 등록일
	
	
	
	public int getPamount() {
		return pamount;
	}
	public void setPamount(int pamount) {
		this.pamount = pamount;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getHid() {
		return hid;
	}
	public void setHid(String hid) {
		this.hid = hid;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPtaste() {
		return ptaste;
	}
	public void setPtaste(String ptaste) {
		this.ptaste = ptaste;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	
	
}
