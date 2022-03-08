package com.junefw.infra.modules.member;

public class Member {
	
	private String ifmmSeq = "";
	private String ifmmId = "";
	private String ifmmName= "";
	private String ifmmGenderName;
	private String ifmmDob;
	private String ifmmFavoriteColor;
	private Integer ifmmDelNy;
//------------
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public String getIfmmGenderName() {
		return ifmmGenderName;
	}
	public void setIfmmGenderName(String ifmmGenderName) {
		this.ifmmGenderName = ifmmGenderName;
	}
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public String getIfmmFavoriteColor() {
		return ifmmFavoriteColor;
	}
	public void setIfmmFavoriteColor(String ifmmFavoriteColor) {
		this.ifmmFavoriteColor = ifmmFavoriteColor;
	}

}