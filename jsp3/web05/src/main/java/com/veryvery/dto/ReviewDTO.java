package com.veryvery.dto;

public class ReviewDTO {

	private int seq;
	private String title; 
	private String content; 
	private String image;
	private String nickname; 
	private String regdate;
	private int jo;
	
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getJo() {
		return jo;
	}
	public void setJo(int jo) {
		this.jo = jo;
	}
	
	
	
}
