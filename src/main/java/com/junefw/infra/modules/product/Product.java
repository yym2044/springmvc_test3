package com.junefw.infra.modules.product;

public class Product {
	
//	DTO
	private Integer trpdSeq;
	private String trpdName;
	private Integer trpdPrice;
	private Integer trpdDelNy;
	
//------------
	public Integer getTrpdSeq() {
		return trpdSeq;
	}
	public void setTrpdSeq(Integer trpdSeq) {
		this.trpdSeq = trpdSeq;
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
	public Integer getTrpdDelNy() {
		return trpdDelNy;
	}
	public void setTrpdDelNy(Integer trpdDelNy) {
		this.trpdDelNy = trpdDelNy;
	}

	
}