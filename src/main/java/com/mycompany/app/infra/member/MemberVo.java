package com.mycompany.app.infra.member;

public class MemberVo {

	private Integer shOption;
	private String shKeyword;
	private String seq;
	private Integer delNy;

	private String id_Email;



	private String password;

	private String name;

	private String phoneNum;

	private String gender;

	private String month;

	private String date;

	private String year;


//	-----
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShKeyword() {
		return shKeyword;
	}
	public void setShKeyword(String shKeyword) {
		this.shKeyword = shKeyword;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}


	public String getId_Email() {
		return id_Email;
	}

	public void setId_Email(String id_Email) {
		this.id_Email = id_Email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
}


