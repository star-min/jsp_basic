package com.shop.common;

public class BasketDetailVO {
	private int bno;		//장바구니번호
	private String hid;	//사용자아이디
	private int pno;		//상품코드
	private String ptaste;	//색상
	private int pamount;		//수량
	private String bdate;	//장바구니 등록일
	private String pgory;    //상품카테고리
	private String pname;    	//장바구니 제품 상품명
	private int pprice; 		//장바구니 제품 가격
	private String pcomment;    //장바구니 제품 설명
	private String pimage;  	//장바구니 제품 이미지
	private String pinday;		//장바구니 제품 등록일
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
	public int getPamount() {
		return pamount;
	}
	public void setPamount(int pamount) {
		this.pamount = pamount;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
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
	public String getPinday() {
		return pinday;
	}
	public void setPinday(String pinday) {
		this.pinday = pinday;
	}
	
	
}
