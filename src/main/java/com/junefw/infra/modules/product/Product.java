package com.junefw.infra.modules.product;

public class Product {
	
//	DTO
	private Integer trpdSeq;
	private String trpdPid;
	private String trpdName;
	private Integer trpdPrice;
	private String tropName;
	private String trocName;
	private Integer trocAdditionalPrice;
	
	
//------------
	public Integer getTrpdSeq() {
		return trpdSeq;
	}
	public void setTrpdSeq(Integer trpdSeq) {
		this.trpdSeq = trpdSeq;
	}
	public String getTrpdPid() {
		return trpdPid;
	}
	public void setTrpdPid(String trpdPid) {
		this.trpdPid = trpdPid;
	}
	public String getTrpdName() {
		return trpdName;
	}
	public void setTrpdName(String trpdName) {
		this.trpdName = trpdName;
	}
	public Integer getTrpdPrice() {
		return trpdPrice;
	}
	public void setTrpdPrice(Integer trpdPrice) {
		this.trpdPrice = trpdPrice;
	}
	public String getTropName() {
		return tropName;
	}
	public void setTropName(String tropName) {
		this.tropName = tropName;
	}
	public String getTrocName() {
		return trocName;
	}
	public void setTrocName(String trocName) {
		this.trocName = trocName;
	}
	public Integer getTrocAdditionalPrice() {
		return trocAdditionalPrice;
	}
	public void setTrocAdditionalPrice(Integer trocAdditionalPrice) {
		this.trocAdditionalPrice = trocAdditionalPrice;
	}

	
}