package kr.go.yeosu.model;

public class TourlistVO {
	private	int ppno;		//장소연번 
	private	String pid;		//장소아이디
	private	String pname;	//장소명
	private	String ptype;	//장소구분
	private	String pcoment;	//장소설명
	private	String pimg1;	//장소이미지 경로
	private	String pimg2; 	//장소이미지2 경로
	private	String pimg3;	//장소썸네일1 경로
	private	String pimg4;	//장소이미지3 경로
	public int getPpno() {
		return ppno;
	}
	public void setPpno(int ppno) {
		this.ppno = ppno;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPcoment() {
		return pcoment;
	}
	public void setPcoment(String pcoment) {
		this.pcoment = pcoment;
	}
	public String getPimg1() {
		return pimg1;
	}
	public void setPimg1(String pimg1) {
		this.pimg1 = pimg1;
	}
	public String getPimg2() {
		return pimg2;
	}
	public void setPimg2(String pimg2) {
		this.pimg2 = pimg2;
	}
	public String getPimg3() {
		return pimg3;
	}
	public void setPimg3(String pimg3) {
		this.pimg3 = pimg3;
	}
	public String getPimg4() {
		return pimg4;
	}
	public void setPimg4(String pimg4) {
		this.pimg4 = pimg4;
	}
}