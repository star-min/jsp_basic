package com.veryvery.dto;

public class Code {
	/*
	<select name="job">
		<option value="001">프로그래머</option>
		<option value="002">데이터베이스관리자</option>
		<option value="003">디자이너</option>
	</select>
	위와 같이 job에서 프로그래머는 label에 해당 value인 001은 code에 별도로 전달하여 처리가 가능
	*/
	private String code;
	private String label;
	
	public Code() { }
	public Code(String code, String label) {
		this.code = code;
		this.label = label;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
}