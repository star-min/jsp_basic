package com.shop.common;

import java.util.Date;

public class PowderVO {
	private int pno;			//상품코드
	private String pgory;		//카테고리
	private String pname;		//상품명
	private int pprice;			//가격
	private String ptaste;		//맛
	private int pamount;		//수량
	private String pcomment;	//설명
	private String pimage;		//이미지
	private Date pinday;		//등록일
	

	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPgory() {
		return pgory;
	}
	public void setPgory(String pgory) {
		this.pgory = pgory;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getPtaste() {
		return ptaste;
	}
	public void setPtaste(String ptaste) {
		this.ptaste = ptaste;
	}
	public int getPamount() {
		return pamount;
	}
	public void setPamount(int pamount) {
		this.pamount = pamount;
	}
	public String getPcomment() {
		return pcomment;
	}
	public void setPcomment(String pcomment) {
		this.pcomment = pcomment;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public Date getPinday() {
		return pinday;
	}
	public void setPinday(Date pinday) {
		this.pinday = pinday;
	}
	
	
}
