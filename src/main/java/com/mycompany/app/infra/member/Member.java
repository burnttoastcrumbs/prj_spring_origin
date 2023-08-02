package com.mycompany.app.infra.code.member;

public class Member {

	// DTO 작성법 
	//디비칼럼명 첫글자는 소문자
	//seq는 편의상 디비에는 int지만 자바에서는 string으로 사용한다.
	
	private String seq;
	private String id_Email;
	private String name;
	private String phoneNumber;
	private String password;
	private String gender;
	private String dob;
	
//	----- 우클릭 source / generate getter, setter
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getId_Email() {
		return id_Email;
	}
	public void setId_Email(String id_Email) {
		this.id_Email = id_Email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	

	
	
}